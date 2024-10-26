/datum/job/ms13/deadriver/church
	selection_color = "#bfe6eb"
	departments_list = list(
		/datum/job_department/deadriver/church,
	)
	forbid = ""
	enforce = ""

/datum/outfit/job/ms13/deadriver/church
	name = "IF YOU SEE THIS, SOMETHING HAS GONE WRONG OR AN ADMIN DID SOMETHING"
	jobtype = /datum/job/ms13/deadriver/church

/datum/outfit/job/ms13/deadriver/church/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/deadriver/church/config_check()
	if(type == /datum/job/ms13/deadriver/church)
		return FALSE
	return ..()

/datum/job/ms13/deadriver/church/map_check()
	if(type == /datum/job/ms13/deadriver/church)
		return FALSE
	return ..()
