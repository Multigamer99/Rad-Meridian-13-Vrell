/datum/job/ms13/ranch
	selection_color = "#4feb64"
	departments_list = list(
		/datum/job_department/ranch,
	)
	forbid = "null"
	enforce = "null"

/datum/outfit/job/ms13/ranch
	name = "Default"
	jobtype = /datum/job/ms13/ranch

/datum/outfit/job/ms13/ranch/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/ranch/config_check()
	if(type == /datum/job/ms13/ranch)
		return FALSE
	return ..()

/datum/job/ms13/ranch/map_check()
	if(type == /datum/job/ms13/ranch)
		return FALSE
	return ..()
