/datum/job/ms13/town_deadwater
	selection_color = "#12491a"
	departments_list = list(
		/datum/job_department/town_deadwater,
	)

/datum/outfit/job/ms13/town_deadwater
	name = "Default"
	jobtype = /datum/job/ms13/town_deadwater

/datum/outfit/job/ms13/town_deadwater/pre_equip(mob/living/carbon/human/H)
	..()

//These are base jobs, we don't want them appearing at all
/datum/job/ms13/town_deadwater/config_check()
	if(type == /datum/job/ms13/town_deadwater)
		return FALSE
	return ..()

/datum/job/ms13/town_deadwater/map_check()
	if(type == /datum/job/ms13/town_deadwater)
		return FALSE
	return ..()
