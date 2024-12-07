//Vrell - This contains the stuffs and things for the bluestar system. Kinda important here.

SUBSYSTEM_DEF(bluestar)
    //Subsystem metadata

    /// Name of the subsystem - you must change this
	name = "bluestar system"

	/// Order of initialization. Higher numbers are initialized first, lower numbers later. Use or create defines such as [INIT_ORDER_DEFAULT] so we can see the order in one file.
	init_order = INIT_ORDER_BLUESTAR

	/// Time to wait (in deciseconds) between each call to fire(). Must be a positive integer.
	wait = CONFIG_GET(flag/bstar_survival_block)

	/// Priority Weight: When mutiple subsystems need to run in the same tick, higher priority subsystems will be given a higher share of the tick before MC_TICK_CHECK triggers a sleep, higher priority subsystems also run before lower priority subsystems
	priority = FIRE_PRIORITY_DATABASE

	/// [Subsystem Flags][SS_NO_INIT] to control binary behavior. Flags must be set at compile time or before preinit finishes to take full effect. (You can also restart the mc to force them to process again)
	flags = NONE

	/// This var is set to TRUE after the subsystem has been initialized.
	initialized = FALSE

	/// Set to 0 to prevent fire() calls, mostly for admin use or subsystems that may be resumed later
	/// use the [SS_NO_FIRE] flag instead for systems that never fire to keep it from even being added to list that is checked every tick
	can_fire = TRUE

	///Bitmap of what game states can this subsystem fire at. See [RUNLEVELS_DEFAULT] for more details.
	runlevels = RUNLEVEL_INIT|RUNLEVEL_LOBBY|RUNLEVELS_DEFAULT //points of the game at which the SS can fire

    //Custom Shit
    var/list/entries
    //Transactions from past rounds
    var/list/logged_transactions
    //Transactions from this round
    var/list/new_transactions
    var/list/ckeys

/datum/controller/subsystem/bluestar/Initialize()
    if(!refresh_from_database()) return

/datum/controller/subsystem/bluestar/Shutdown()

/datum/controller/subsystem/bluestar/fire(resumed = FALSE)


/datum/controller/subsystem/bluestar/proc/add_transaction(var/ckey, var/datum/bluestar_transaction/transaction)
    if(entries[ckey] == null)
        entries[ckey] = new /datum/bluestar_entry(ckey, transaction, TRUE)
        ckeys += ckey
    else
        entries[ckey].add_transaction(transaction, TRUE)
    
    if(transaction.type == "commendation")
        if(entries[transaction.gifter] == null)
            entries[transaction.gifter] = new /datum/bluestar_entry(transaction.gifter, transaction, FALSE)
            ckeys += transaction.gifter
        else
            entries[transaction.gifter].add_transaction(new_entry, FALSE)
    
    new_transactions += transaction

/datum/controller/subsystem/bluestar/proc/player_spawned(var/ckey, var/client/cli)
    if(entries[ckey] == null)
        if(!dbfail)
            entries[ckey] = new /datum/bluestar_entry(ckey, new /datum/bluestar_transaction("starting", curentry.ckey, "SERVER", GLOB.round_id, SQLtime(), CONFIG_GET(number/bstar_new_start), 0, ""))
        else
            entries[ckey] = new /datum/bluestar_entry(ckey)
        ckeys += ckey
    entries[ckey].start_time = world.time
    entries[ckey].dead_time = 0
    entries[ckey].inactive_time = 0
    entries[ckey].cli = cli

/datum/controller/subsystem/bluestar/proc/trigger_survival(var/target_ckey, var/mob/target_mob)
    //VRELL - IMPORTING CONFIGS! DONE HERE SO THAT IT CAN BE CHANGED UP UNTIL IT IS USED.
    var/survival_bonus = CONFIG_GET(number/bstar_survival_reward)
    var/survival_ratio = CONFIG_GET(number/bstar_survival_ratio)
    var/survival_relative = CONFIG_GET(flag/bstar_survival_relative)
    var/survival_minimum_time = CONFIG_GET(number/bstar_survival_minimum_time)
    var/survival_block = CONFIG_GET(flag/bstar_survival_block)

    //No survival benefits if you haven't been in the round for more time than the minimum allowed.
    if(world.time - target_mob.spawn_time < survival_minimum_time * 10) return

    if(!survival_relative)
        if(target_mob.spawn_time)

    //TODO: Survival time check

    var/datum/bluestar_transaction/survival_transaction = new /datum/bluestar_transaction("survival", target_ckey, "SERVER", GLOB.round_id, SQLtime(), survival_bonus, 0, "")

    new_transactions += survival_transaction

    if(entries[target_ckey] == null)
        ckeys += target_ckey
        entries[target_ckey] += new /datum/bluestar_entry(target_ckey, survival_transaction)
    else
        entries[target_ckey].add_transaction(survival_transaction)

//Vrell - since the database only stores transactions for syncing purposes, we need to load in all the past transactions to get the data we actually want.
/datum/controller/subsystem/bluestar/proc/refresh_from_database()
    logged_transactions = list()
    entries = list()
    ckeys = list()

    dbfail = FALSE
    if(!SSdbcore.Connect())
		message_admins("Failed to connect to database while loading bluestars.")
		log_sql("Failed to connect to database while loading bluestars.")
		dbfail = TRUE
        return FALSE

    var/datum/db_query/query_bluestars = SSdbcore.NewQuery({"
        SELECT * FROM [format_table_name("bluestar")] ORDER BY timestamp
    "})
    if(!query_bluestars.Execute())
        message_admins("Failed to connect to database while loading bluestars.")
		log_sql("Failed to connect to database while loading bluestars.")
        qdel(query_bluestars)
        dbfail = TRUE
        return FALSE

    while(query_bluestars.NextRow())
        //Parsing the data
        var/datum/bluestar_transaction/curtransaction = new /datum/bluestar_transaction(query_bluestars.item[1], query_bluestars.item[2], query_bluestars.item[3], query_bluestars.item[4], query_bluestars.item[5], query_bluestars.item[6], query_bluestars.item[7], query_bluestars.item[8])

        //Putting the data in the appropriate places
        logged_transactions += curtransaction
        if(entries[curtransaction.target] == null)
            entries[curtransaction.target] = new /datum/bluestar_entry(curtransaction.target, curtransaction)
            ckeys += curtransaction.target
        else
            entries[curtransaction.target].add_transaction(new_entry)
        if(curtransaction.type == "commendation")
            if(entries[curtransaction.gifter] == null)
                entries[curtransaction.gifter] = new /datum/bluestar_entry(curtransaction.gifter, curtransaction, FALSE)
                ckeys += curtransaction.gifter
            else
                entries[curtransaction.gifter].add_transaction(new_entry, FALSE)
    
    qdel(query_bluestars)
    
    //And then rebuilding from the transactions made during this round.
    for(var/datum/bluestar_transaction/curtransaction in new_transactions)
        if(entries[curtransaction.target] == null)
            entries[curtransaction.target] = new /datum/bluestar_entry(curtransaction.target, curtransaction)
            ckeys += curtransaction.target

            entries[curtransaction.target].is_new = TRUE
        else
            entries[curtransaction.target].add_transaction(new_entry)
        if(curtransaction.type == "commendation")
            if(entries[curtransaction.gifter] == null)
                var/datum/bluestar_entry/new_entry = new /datum/bluestar_entry(curtransaction.gifter, curtransaction, FALSE)
                entries[curtransaction.gifter] = new_entry
                ckeys += curtransaction.gifter
            else
                entries[curtransaction.gifter].add_transaction(new_entry, FALSE)
        if(curtransaction.type == "starting")
            entries[curtransaction.target].is_new = FALSE
    
    //And finally, doing starting transactions otherwise missed due to database issues.
    for(var/datum/bluestar_entry/curentry in entries)
        if(curentry.is_new)
            add_transaction(curentry.ckey, new /datum/bluestar_transaction("starting", curentry.ckey, "SERVER", GLOB.round_id, SQLtime(), CONFIG_GET(number/bstar_new_start), 0, ""))
            curentry.is_new = FALSE

/datum/bluestar_entry
    var/ckey
    var/inactive_time = 0
    var/dead_time = 0
    var/last_death = world.time
    var/start_time = world.time
    var/is_new = FALSE
    var/client/cli
    var/bluestar_count = 0
    var/list/bluestar_transactions

/datum/bluestar_entry/New(var/desired_ckey)
    ckey = desired_ckey

/datum/bluestar_entry/New(var/desired_ckey, var/datum/bluestar_transaction/starting_transactions, var/is_target = TRUE)
    ckey = desired_ckey
    add_transaction(starting_transactions, is_target)

/datum/bluestar_entry/proc/add_transaction(var/datum/bluestar_transaction/transaction, var/is_target = TRUE)
    bluestar_transactions += transaction
    bluestar_count += is_target ? transaction.target_reward : transaction.gifter_reward
    if(transaction.type == "survival") {
        ++rounds_survived
    }

/datum/bluestar_transaction
    var/type
    var/target
    var/gifter
    var/round_id
    var/timestamp
    var/target_reward
    var/gifter_reward
    var/note

/datum/bluestar_transaction/New(var/desired_type, var/desired_target, var/desired_gifter, var/desired_round_id, var/desired_timestamp, var/desired_target_reward, var/desired_gifter_reward, var/desired_note)
    type = desired_type
    target = desired_target
    gifter = desired_gifter
    round_id = desired_round_id
    timestamp = desired_timestamp
    target_reward = desired_target_reward
    gifter_reward = desired_gifter_reward
    note = desired_note

