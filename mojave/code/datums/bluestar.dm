//Vrell - This contains the stuffs and things for the bluestar system. Kinda important here.

/datum/bluestar_system
    var/list/entries
    //Transactions from past rounds
    var/list/logged_transactions
    //Transactions from this round
    var/list/new_transactions
    var/list/ckeys
    var/dbfail = FALSE //stores whether or not the last database access failed.

/datum/bluestar_system/New()
    //GET THE INITIAL DATA FROM THE DATABASE TO POPULATE OUR SHIT IF WE CAN
    if(!dbfail)
        if(!refresh_from_database()) return

    CONFIG_GET(string/servername)

/datum/bluestar_system/proc/add_transaction(var/ckey, var/bluestar_transaction/transaction)
    if(entries[ckey] == null)
        entries[ckey] = new bluestar_entry(ckey, transaction, TRUE)
        ckeys += ckey
    else
        entries[ckey].add_transaction(transaction, TRUE)
    
    if(transaction.type == "commendation")
        if(entries[transaction.gifter] == null)
            entries[transaction.gifter] = new bluestar_entry(transaction.gifter, transaction, FALSE)
            ckeys += transaction.gifter
        else
            entries[transaction.gifter].add_transaction(new_entry, FALSE)
    
    new_transactions += transaction

/datum/bluestar_system/proc/trigger_survival()
    //VRELL - START HERE

//Vrell - since the database only stores transactions for syncing purposes, we need to load in all the past transactions to get the data we actually want.
/datum/bluestar_system/proc/refresh_from_database()
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
        var/datum/bluestar_transaction/curtransaction = new bluestar_transaction(query_bluestars.item[1], query_bluestars.item[2], query_bluestars.item[3], query_bluestars.item[4], query_bluestars.item[5], query_bluestars.item[6], query_bluestars.item[7], query_bluestars.item[8])

        //Putting the data in the appropriate places
        logged_transactions += curtransaction
        if(entries[curtransaction.target] == null)
            var/datum/bluestar_entry/new_entry = new bluestar_entry(curtransaction.target, curtransaction)
            entries[curtransaction.target] = new_entry
            ckeys += curtransaction.target
        else
            entries[curtransaction.target].add_transaction(new_entry)
        if(curtransaction.type == "commendation")
            if(entries[curtransaction.gifter] == null)
                var/datum/bluestar_entry/new_entry = new bluestar_entry(curtransaction.gifter, curtransaction, FALSE)
                entries[curtransaction.gifter] = new_entry
                ckeys += curtransaction.gifter
            else
                entries[curtransaction.gifter].add_transaction(new_entry, FALSE)
        
    qdel(query_bluestars)

/datum/bluestar_entry
    var/ckey
    var/bluestar_count = 0
    var/list/bluestar_transactions

/datum/bluestar_entry/New(var/desired_ckey, var/starting_transactions, var/is_target = TRUE)
    ckey = desired_ckey
    add_transaction(starting_transactions, is_target)

/datum/bluestar_entry/proc/add_transaction(var/transaction, var/is_target = TRUE)
    bluestar_transactions += transaction
    bluestar_count += is_target ? transaction.target_reward : transaction.gifter_reward

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

