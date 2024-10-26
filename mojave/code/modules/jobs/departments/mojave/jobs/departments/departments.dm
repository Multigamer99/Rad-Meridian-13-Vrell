/*
#define DEPARTMENT_BITFLAG_NCR (1<<10)
#define DEPARTMENT_NCR "NCR"
#define DEPARTMENT_BITFLAG_BOS (1<<11)
#define DEPARTMENT_BOS "BOS"
#define DEPARTMENT_BITFLAG_RAIDERS (1<<12)
#define DEPARTMENT_RAIDERS "Gangs"
#define DEPARTMENT_BITFLAG_TOWN (1<<13)
#define DEPARTMENT_TOWN "Snowcrest"
#define DEPARTMENT_BITFLAG_WASTELAND (1<<14)
#define DEPARTMENT_WASTELAND "Wasteland"
#define DEPARTMENT_BITFLAG_LEGION (1<<15)
#define DEPARTMENT_LEGION "Legion"
#define DEPARTMENT_BITFLAG_RANGERS (1<<16)
#define DEPARTMENT_RANGERS "Rangers"
#define DEPARTMENT_BITFLAG_DROUGHTTOWN (1<<17)
#define DEPARTMENT_DROUGHTTOWN "Barony"
#define DEPARTMENT_BITFLAG_DRYLANDER (1<<18)
#define DEPARTMENT_DRYLANDER "Drylanders"
#define DEPARTMENT_BITFLAG_GOLDMAN (1<<19)
#define DEPARTMENT_GOLDMAN "Goldman"

// Fancy name for fancy boys
/datum/job_department/var/department_full_name = null

/datum/job_department/ncr
	department_name = DEPARTMENT_NCR
	department_bitflags = DEPARTMENT_BITFLAG_NCR
	department_experience_type = EXP_TYPE_NCR
	department_full_name = "The New California Republic"
	//display_order = 0
	//label_class = "NCR"
	//latejoin_color = "#ffddf0"


/datum/job_department/legion
	department_name = DEPARTMENT_LEGION
	department_bitflags = DEPARTMENT_BITFLAG_LEGION
	department_head = /datum/job/ms13/legion/veterandecanus
	department_experience_type = EXP_TYPE_LEGION
	department_full_name = "Caesar's Legion"
 	//display_order = 0
 	//label_class = "Legion"
 	//latejoin_color = "#ffddf0"

/// Depreciated. Not even human.
//datum/job_department/rangers
//	department_name = DEPARTMENT_RANGERS
//	department_bitflags = DEPARTMENT_BITFLAG_RANGERS
//	department_experience_type = EXP_TYPE_RANGERS
//	department_full_name = "Desert Rangers"

/*// There. I made it easy for you to un-fix the server. Just remove the commenting out.
/datum/job_department/bos
	department_name = DEPARTMENT_BOS
	department_bitflags = DEPARTMENT_BITFLAG_BOS
	department_head = /datum/job/ms13/bos/head_paladin
	department_experience_type = EXP_TYPE_BOS
	department_full_name = "The Brotherhood Of Steel"
	//display_order = 0
	//label_class = "BOS"
	//latejoin_color = "#ffddf0"
*/

/datum/job_department/raiders
	department_name = DEPARTMENT_RAIDERS
	department_bitflags = DEPARTMENT_BITFLAG_RAIDERS
	department_experience_type = EXP_TYPE_RAIDERS
	department_full_name = "Gangs of Mammoth"
	//display_order = 0
	//label_class = "RAIDERS"
	//latejoin_color = "#ffddf0"

/datum/job_department/town
	department_name = DEPARTMENT_TOWN
	department_bitflags = DEPARTMENT_BITFLAG_TOWN
	department_head = /datum/job/ms13/town/mayor
	department_experience_type = EXP_TYPE_TOWN
	department_full_name = "Town of Snowcrest"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/wasteland
	department_name = DEPARTMENT_WASTELAND
	department_bitflags = DEPARTMENT_BITFLAG_WASTELAND
	// department_head = I dunno mate
	department_experience_type = EXP_TYPE_WASTELAND
	//display_order = 0
	label_class = "WASTELAND"
	//latejoin_color = "#ffddf0"

/datum/job_department/town_drought
	department_name = DEPARTMENT_DROUGHTTOWN
	department_bitflags = DEPARTMENT_BITFLAG_DROUGHTTOWN
	department_head = /datum/job/ms13/town_drought/baron
	department_experience_type = EXP_TYPE_DROUGHTTOWN
	department_full_name = "The Barony"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/drylander
	department_name = DEPARTMENT_DRYLANDER
	department_bitflags = DEPARTMENT_BITFLAG_DRYLANDER
	department_head = /datum/job/ms13/drylander/chieftain
	department_experience_type = EXP_TYPE_DRYLANDERS
	department_full_name = "Drylander Tribe"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/goldman
	department_name = DEPARTMENT_GOLDMAN
	department_bitflags = DEPARTMENT_BITFLAG_GOLDMAN
	department_head = /datum/job/ms13/goldman/ringleader
	department_experience_type = EXP_TYPE_GOLDMAN
	department_full_name = "The Goldman Posse"
*/

#define DEPARTMENT_BITFLAG_WASTELAND (1<<11)
#define DEPARTMENT_WASTELAND "Independent"
#define DEPARTMENT_BITFLAG_DEADRIVER (1<<12)
#define DEPARTMENT_DEADRIVER "Dead River"
#define DEPARTMENT_BITFLAG_DEADRIVER_CHURCH (1<<13)
#define DEPARTMENT_DEADRIVER_CHURCH "Church"
#define DEPARTMENT_BITFLAG_DEADRIVER_LAW (1<<14)
#define DEPARTMENT_DEADRIVER_LAW "Law Enforcement"
#define DEPARTMENT_BITFLAG_DEADRIVER_SALOON (1<<15)
#define DEPARTMENT_DEADRIVER_SALOON "Saloon"
#define DEPARTMENT_BITFLAG_DEADRIVER_POSSE (1<<16)
#define DEPARTMENT_DEADRIVER_POSSE "Posse"
#define DEPARTMENT_BITFLAG_DEADRIVER_DINER (1<<17)
#define DEPARTMENT_DEADRIVER_DINER "Diner"
#define DEPARTMENT_BITFLAG_DEADRIVER_STORE (1<<18)
#define DEPARTMENT_DEADRIVER_STORE "General Store"
#define DEPARTMENT_BITFLAG_DEADRIVER_MECHANIC (1<<19)
#define DEPARTMENT_DEADRIVER_MECHANIC "Mechanics"
#define DEPARTMENT_BITFLAG_DEADRIVER_RANCH (1<<20)
#define DEPARTMENT_DEADRIVER_RANCH "Brahmin Ranch"
#define DEPARTMENT_BITFLAG_DRYLANDER (1<<21)
#define DEPARTMENT_DRYLANDER "Drylanders"
#define DEPARTMENT_BITFLAG_ADVISORS (1<<22)
#define DEPARTMENT_ADVISORS "Legion Advisors"
#define DEPARTMENT_BITFLAG_RAIDER (1<<23)
#define DEPARTMENT_RAIDER "Raiders"
#define DEPARTMENT_BITFLAG_CARAVAN (1<<24)
#define DEPARTMENT_CARAVAN "Crimson Caravan"
#define DEPARTMENT_BITFLAG_NCR (1<<25)
#define DEPARTMENT_NCR "NCR Border Guard"

/datum/job_department/wasteland
	department_name = DEPARTMENT_WASTELAND
	department_bitflags = DEPARTMENT_BITFLAG_WASTELAND
	// department_head = I dunno mate
	department_experience_type = EXP_TYPE_WASTELAND
	//display_order = 0
	label_class = "WASTELAND"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver
	department_name = DEPARTMENT_DEADRIVER
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER
	//department_head = /datum/job/ms13/deadriver // NONE!!!
	department_experience_type = EXP_TYPE_DEADRIVER
	department_full_name = "Dead River"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver/church
	department_name = DEPARTMENT_DEADRIVER_CHURCH
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER_CHURCH
	department_head = /datum/job/ms13/deadriver/church/bishop
	department_experience_type = EXP_TYPE_DEADRIVER_CHURCH
	department_full_name = "Dead River Church"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver/law
	department_name = DEPARTMENT_DEADRIVER_LAW
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER_LAW
	department_head = /datum/job/ms13/deadriver/law/sheriff
	department_experience_type = EXP_TYPE_DEADRIVER_LAW
	department_full_name = "Dead River Sheriff Department"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver/saloon
	department_name = DEPARTMENT_DEADRIVER_SALOON
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER_SALOON
	department_head = /datum/job/ms13/deadriver/saloon/barkeep
	department_experience_type = EXP_TYPE_DEADRIVER_SALOON
	department_full_name = "Dead River Saloon"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver/posse
	department_name = DEPARTMENT_DEADRIVER_POSSE
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER_POSSE
	department_head = /datum/job/ms13/deadriver/posse/ringleader
	department_experience_type = EXP_TYPE_DEADRIVER_POSSE
	department_full_name = "Dead River Posse"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver/diner
	department_name = DEPARTMENT_DEADRIVER_DINER
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER_DINER
	department_head = /datum/job/ms13/deadriver/diner/chef
	department_experience_type = EXP_TYPE_DEADRIVER_DINER
	department_full_name = "Dead River Diner"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver/store
	department_name = DEPARTMENT_DEADRIVER_STORE
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER_STORE
	department_head = /datum/job/ms13/deadriver/store/owner
	department_experience_type = EXP_TYPE_DEADRIVER_STORE
	department_full_name = "Dead River General Store"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver/mechanic
	department_name = DEPARTMENT_DEADRIVER_MECHANIC
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER_MECHANIC
	department_head = /datum/job/ms13/deadriver/mechanic/head
	department_experience_type = EXP_TYPE_DEADRIVER_MECHANIC
	department_full_name = "Dead River Mechanics"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver/ranch
	department_name = DEPARTMENT_DEADRIVER_RANCH
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER_RANCH
	department_head = /datum/job/ms13/deadriver/ranch/head
	department_experience_type = EXP_TYPE_DEADRIVER_RANCH
	department_full_name = "Dead River Brahmin Ranch"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/deadriver/ranch
	department_name = DEPARTMENT_DEADRIVER_RANCH
	department_bitflags = DEPARTMENT_BITFLAG_DEADRIVER_RANCH
	department_head = /datum/job/ms13/deadriver/ranch/head
	department_experience_type = EXP_TYPE_DEADRIVER_RANCH
	department_full_name = "Dead River Brahmin Ranch"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/drylander
	department_name = DEPARTMENT_DRYLANDER
	department_bitflags = DEPARTMENT_BITFLAG_DRYLANDER
	department_head = /datum/job/ms13/drylander/chieftain
	department_experience_type = EXP_TYPE_DRYLANDER
	department_full_name = "Drylanders"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/advisors
	department_name = DEPARTMENT_ADVISORS
	department_bitflags = DEPARTMENT_BITFLAG_ADVISORS
	department_head = /datum/job/ms13/advisors/decanus
	department_experience_type = EXP_TYPE_ADVISORS
	department_full_name = "Legion Advisors"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/raider
	department_name = DEPARTMENT_RAIDER
	department_bitflags = DEPARTMENT_BITFLAG_RAIDER
	department_head = /datum/job/ms13/raider/boss
	department_experience_type = EXP_TYPE_RAIDER
	department_full_name = "Raiders"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/caravan
	department_name = DEPARTMENT_CARAVAN
	department_bitflags = DEPARTMENT_BITFLAG_CARAVAN
	department_head = /datum/job/ms13/caravan/manager
	department_experience_type = EXP_TYPE_CARAVAN
	department_full_name = "Crimson Caravan"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

/datum/job_department/ncr
	department_name = DEPARTMENT_NCR
	department_bitflags = DEPARTMENT_BITFLAG_NCR
	department_head = /datum/job/ms13/ncr/staffsergeant
	department_experience_type = EXP_TYPE_NCR
	department_full_name = "NCR"
	//display_order = 0
	//label_class = "TOWN"
	//latejoin_color = "#ffddf0"

// FLAG DEFINES

/datum/asset/simple/ms13/faction_flags
	assets = list(
		"NCR_flag.png" = 'mojave/icons/faction_flags/flag_ncr.png',
		"Legion_flag.png" = 'mojave/icons/faction_flags/flag_legion.png',
		"Rangers_flag.png" = 'mojave/icons/faction_flags/flag_rangers.png',
		"BOS_flag.png" = 'mojave/icons/faction_flags/flag_brotherhood.png',
		"Gangs_flag.png" = 'mojave/icons/faction_flags/flag_raiders.png',
		"Snowcrest_flag.png" = 'mojave/icons/faction_flags/flag_wastelanders.png', //placeholder
		"Wasteland_flag.png" = 'mojave/icons/faction_flags/flag_wastelanders.png',
		"Barony_flag.png" = 'mojave/icons/faction_flags/flag_wastelanders.png', //placeholder
		"Drylanders_flag.png" = 'mojave/icons/faction_flags/flag_wastelanders.png',
		"Goldman_flag.png" = 'mojave/icons/faction_flags/flag_goldman.png'
	)
