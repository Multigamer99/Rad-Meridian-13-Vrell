/datum/job/ms13/deadriver
	selection_color = "#4feb64"
	departments_list = list(
		/datum/job_department/deadriver,
	)
	forbid = ""
	enforce = ""

/datum/outfit/job/ms13/deadriver
	name = "IF YOU SEE THIS, SOMETHING HAS GONE WRONG OR AN ADMIN DID SOMETHING"
	jobtype = /datum/job/ms13/deadriver

/datum/outfit/job/ms13/deadriver/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/deadriver/config_check()
	if(type == /datum/job/ms13/deadriver)
		return FALSE
	return ..()

/datum/job/ms13/deadriver/map_check()
	if(type == /datum/job/ms13/deadriver)
		return FALSE
	return ..()
