/* Vrell - Old shit for reference.
GLOBAL_LIST_INIT(wasteland_positions, list(
	"Wastelander",
	"New Canaanite",
	"Hubologist"))

GLOBAL_LIST_INIT(town_positions, list(
	"Snowcrest Mayor",
	"Snowcrest Citizen",
	"Snowcrest Squatter",
	"Snowcrest Worker",
	"Snowcrest Bartender",
	"Snowcrest Doctor",
	"Snowcrest Nurse",
	"Town Deputy",
	"Snowcrest Bodyguard",
	"Town Sheriff"))

GLOBAL_LIST_INIT(ncr_positions, list(
	"NCR Trooper",
	"NCR Military Police",
	"NCR Radioman",
	"NCR MP Medic",
	"NCR Medic",
	"NCR Engineer",
	"NCR Sergeant",
	"NCR MP Sergeant",
	"NCR Staff Sergeant",
	"NCR Lieutenant"))

/* // There. I made it easy for you to un-fix the server. Just remove the commenting out.
GLOBAL_LIST_INIT(bos_positions, list(
	"BoS Initiate",
	"BoS Knight",
	"BoS Paladin",
	"BoS Head Paladin",
	"BoS Scribe",
	"BoS Head Scribe")) 
*/

GLOBAL_LIST_INIT(raiders_positions, list(
	"Raider",
	"Raider Enforcer",
	"Raider Sawbone",
	"Raider Boss",
	"Slickback Cook",
	"Slickback",
	"Slickback Underboss",
	"Mon City Grunt",
	"Mon City Marksman",
	"Mon City Pointman",
	"Mon City Captain"))

GLOBAL_LIST_INIT(legion_positions, list(
	"Legion Praetorian",
	"Legion Centurion",
	"Legion Veteran Decanus",
	"Legion Prime Decanus",
	"Legion Recruit Decanus",
	"Legion Veteran",
	"Legion Prime ",
	"Legion Recruit",
	"Legion Vexillarius",
	"Legion Speculatore",
	"Legion Explorer",
	"Legion Scout",
	"Legion Blacksmith",))

GLOBAL_LIST_INIT(ranger_positions, list(
	"Desert Ranger Deputy-Chief",
	"Desert Ranger Elite",
	"Desert Ranger",
	"Desert Ranger Sharpshooter",
	"Desert Ranger Doctor",))

GLOBAL_LIST_INIT(drought_town_positions, list(
	"The Baron",
	"Barony Denizen",
	"Barony Laborer",
	"Barony Barkeep",
	"Barony Clinician",
	"Barony Enforcer"))

GLOBAL_LIST_INIT(drylander_positions, list(
	"Drylander Chieftain",
	"Drylander Shaman",
	"Drylander Headtaker",
	"Drylander Hunter",
	"Drylander Folk"))

GLOBAL_LIST_INIT(goldman_positions, list(
	"Goldman Ringleader",
	"Goldman Quartermaster",
	"Goldman Road Runner",
	"Goldman",
	"Goldman Unproven"))

GLOBAL_LIST_INIT(combattest_positions, list(
	"Blue ganger",
	"Red ganger",))

// job categories for rendering the late join menu
GLOBAL_LIST_INIT(ms13_position_categories, list(
	EXP_TYPE_WASTELAND = list("jobs" = wasteland_positions, "color" = "#eec66f"),
	EXP_TYPE_TOWN= list("jobs" = town_positions, "color" = "#4feb64"),
	EXP_TYPE_NCR = list("jobs" = ncr_positions, "color" = "#cfd1ba"),
	//EXP_TYPE_BOS = list("jobs" = bos_positions, "color" = "#737592"),
	EXP_TYPE_RAIDERS = list("jobs" = raiders_positions, "color" = "#30389c"),
	EXP_TYPE_RANGERS = list("jobs" = ranger_positions, "color" = "#bdbc76"),
	EXP_TYPE_DROUGHTTOWN = list("jobs" = drought_town_positions, "color" = "#12491a"),
	EXP_TYPE_DRYLANDERS = list("jobs" = drylander_positions, "color" = "#4e2e04"),
	EXP_TYPE_COMBATTEST = list("jobs" = combattest_positions, "color" = "#4e2e04"),
	EXP_TYPE_GOLDMAN = list("jobs" = goldman_positions, "color" = "#4e2e04")
))

GLOBAL_LIST_INIT(ms13_exp_jobsmap, list(
	EXP_TYPE_WASTELAND = list("titles" = wasteland_positions),
	EXP_TYPE_TOWN = list("titles" = town_positions),
	EXP_TYPE_NCR = list("titles" = ncr_positions),
	//EXP_TYPE_BOS = list("titles" = bos_positions),
	EXP_TYPE_RAIDERS = list("titles" = raiders_positions),
	EXP_TYPE_RANGERS = list("titles" = ranger_positions),
	EXP_TYPE_DROUGHTTOWN = list("titles" = drought_town_positions),
	EXP_TYPE_DRYLANDERS = list("titles" = drylander_positions),
	EXP_TYPE_COMBATTEST = list("titles" = combattest_positions),
	EXP_TYPE_GOLDMAN = list("titles" = goldman_positions)
))

GLOBAL_PROTECT(ms13_exp_jobsmap)
*/

GLOBAL_LIST_INIT(wasteland_positions, list(
	"Wastelander",))

GLOBAL_LIST_INIT(deadriver_positions, list(
	"Farmer",
	"Scavenger",
	"Entrepreanur",
	"Beggar"))

GLOBAL_LIST_INIT(deadriver_church_positions, list(
	"Bishop",
	"Follower",
	"Acolyte",))

GLOBAL_LIST_INIT(deadriver_law_positions, list(
	"Sheriff",
	"Deputy",))

GLOBAL_LIST_INIT(deadriver_saloon_positions, list(
	"Barkeep",
	"Barmaid",))

GLOBAL_LIST_INIT(deadriver_posse_positions, list(
	"Ringleader",
	"Keeper",
	"Road Runner",
	"Posse",
	"Unproven",))

GLOBAL_LIST_INIT(deadriver_diner_positions, list(
	"Chef",
	"Server",))

GLOBAL_LIST_INIT(deadriver_store_positions, list(
	"Store Owner",
	"Store Assistant",))

GLOBAL_LIST_INIT(deadriver_mechanic_positions, list(
	"Head Mechanic",
	"Junior Mechanic",))

GLOBAL_LIST_INIT(deadriver_ranch_positions, list(
	"Family Head",
	"Family Spouse",
	"Family Offspring",
	"Farm Hand"))

GLOBAL_LIST_INIT(drylander_positions, list(
	"Chieftain",
	"Shaman",
	"Headtaker",
	"Hunter",
	"Dryfolk"))

GLOBAL_LIST_INIT(advisors_positions, list(
	"Veteran Decanus",
	"Vexillarius",
	"Scout",
	"Auxilia"))

GLOBAL_LIST_INIT(raider_positions, list(
	"Boss",
	"Enforcer",
	"Sawbone",
	"Raider"))

GLOBAL_LIST_INIT(caravan_positions, list(
	"Depot Manager",
	"Depot Assistant",
	"Caravan Merchant",
	"Caravan Guard"))

GLOBAL_LIST_INIT(ncr_positions, list(
	"Staff Sergeant",
	"Sergeant",
	"Medic",
	"Radioman",
	"Trooper"))


// job categories for rendering the late join menu
GLOBAL_LIST_INIT(ms13_position_categories, list(
	EXP_TYPE_WASTELAND = list("jobs" = wasteland_positions, "color" = "#eec66f"),
	EXP_TYPE_DEADRIVER = list("jobs" = deadriver_positions, "color" = "#4feb64"),
	EXP_TYPE_DEADRIVER_CHURCH = list("jobs" = deadriver_church_positions, "color" = "#bfe6eb"),
	EXP_TYPE_DEADRIVER_LAW = list("jobs" = deadriver_law_positions, "color" = "#ce5d1b"),
	EXP_TYPE_DEADRIVER_SALOON = list("jobs" = deadriver_saloon_positions, "color" = "#130b5c"),
	EXP_TYPE_DEADRIVER_POSSE = list("jobs" = deadriver_posse_positions, "color" = "#cfacd8"),
	EXP_TYPE_DEADRIVER_DINER = list("jobs" = deadriver_diner_positions, "color" = "#52c252"),
	EXP_TYPE_DEADRIVER_STORE = list("jobs" = deadriver_store_positions, "color" = "#d6a913"),
	EXP_TYPE_DEADRIVER_MECHANIC = list("jobs" = deadriver_mechanic_positions, "color" = "#2c2c2c"),
	EXP_TYPE_DEADRIVER_RANCH = list("jobs" = deadriver_ranch_positions, "color" = "#4ea2b1"),
	EXP_TYPE_DRYLANDER = list("jobs" = drylander_positions, "color" = "#656644"),
	EXP_TYPE_ADVISORS = list("jobs" = advisors_positions, "color" = "#ff3030"),
	EXP_TYPE_RAIDER = list("jobs" = raider_positions, "color" = "#522b2b"),
	EXP_TYPE_CARAVAN = list("jobs" = caravan_positions, "color" = "#990000"),
	EXP_TYPE_NCR = list("jobs" = ncr_positions, "color" = "#cfd1ba"),
))

GLOBAL_LIST_INIT(ms13_exp_jobsmap, list(
	EXP_TYPE_WASTELAND = list("titles" = wasteland_positions),
	EXP_TYPE_DEADRIVER = list("titles" = deadriver_positions),
	EXP_TYPE_DEADRIVER_CHURCH = list("titles" = deadriver_church_positions),
	EXP_TYPE_DEADRIVER_LAW = list("titles" = deadriver_law_positions),
	EXP_TYPE_DEADRIVER_SALOON = list("titles" = deadriver_saloon_positions),
	EXP_TYPE_DEADRIVER_POSSE = list("jobs" = deadriver_posse_positions),
	EXP_TYPE_DEADRIVER_DINER = list("jobs" = deadriver_diner_positions),
	EXP_TYPE_DEADRIVER_STORE = list("jobs" = deadriver_store_positions),
	EXP_TYPE_DEADRIVER_MECHANIC = list("jobs" = deadriver_mechanic_positions),
	EXP_TYPE_DEADRIVER_RANCH = list("jobs" = deadriver_ranch_positions),
	EXP_TYPE_DRYLANDER = list("jobs" = drylander_positions),
	EXP_TYPE_ADVISORS = list("jobs" = advisors_positions),
	EXP_TYPE_RAIDER = list("jobs" = raider_positions),
	EXP_TYPE_CARAVAN = list("jobs" = caravan_positions),
	EXP_TYPE_NCR = list("jobs" = ncr_positions),
))
