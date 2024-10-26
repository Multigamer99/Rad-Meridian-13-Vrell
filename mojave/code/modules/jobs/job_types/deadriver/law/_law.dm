/datum/job/ms13/deadriver/law
	selection_color = "#ce361b"
	departments_list = list(
		/datum/job_department/deadriver/law,
	)
	forbid = ""
	enforce = ""

/datum/outfit/job/ms13/deadriver/law
	name = "IF YOU SEE THIS, SOMETHING HAS GONE WRONG OR AN ADMIN DID SOMETHING"
	jobtype = /datum/job/ms13/deadriver/law

/datum/outfit/job/ms13/deadriver/law/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/deadriver/law/config_check()
	if(type == /datum/job/ms13/deadriver/law)
		return FALSE
	return ..()

/datum/job/ms13/deadriver/law/map_check()
	if(type == /datum/job/ms13/deadriver/law)
		return FALSE
	return ..()
