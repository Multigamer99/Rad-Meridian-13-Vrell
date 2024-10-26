/datum/job/ms13/deadriver/saloon
	selection_color = "#130b5c"
	departments_list = list(
		/datum/job_department/deadriver/saloon,
	)
	forbid = ""
	enforce = ""

/datum/outfit/job/ms13/deadriver/saloon
	name = "IF YOU SEE THIS, SOMETHING HAS GONE WRONG OR AN ADMIN DID SOMETHING"
	jobtype = /datum/job/ms13/deadriver/saloon

/datum/outfit/job/ms13/deadriver/saloon/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/deadriver/saloon/config_check()
	if(type == /datum/job/ms13/deadriver/saloon)
		return FALSE
	return ..()

/datum/job/ms13/deadriver/saloon/map_check()
	if(type == /datum/job/ms13/deadriver/saloon)
		return FALSE
	return ..()
