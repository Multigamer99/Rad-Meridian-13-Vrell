/datum/job/ms13/deadriver/diner
	selection_color = "#130b5c"
	departments_list = list(
		/datum/job_department/deadriver/diner,
	)
	forbid = ""
	enforce = ""

/datum/outfit/job/ms13/deadriver/diner
	name = "IF YOU SEE THIS, SOMETHING HAS GONE WRONG OR AN ADMIN DID SOMETHING"
	jobtype = /datum/job/ms13/deadriver/diner

/datum/outfit/job/ms13/deadriver/diner/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/deadriver/diner/config_check()
	if(type == /datum/job/ms13/deadriver/diner)
		return FALSE
	return ..()

/datum/job/ms13/deadriver/diner/map_check()
	if(type == /datum/job/ms13/deadriver/diner)
		return FALSE
	return ..()
