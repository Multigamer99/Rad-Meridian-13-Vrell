/datum/job/ms13/town_deadwater/barmaid
	title = "Deadwater Barmaid"
	total_positions = 4
	spawn_positions = 4
	supervisors = "Barkeep"
	description = "Tend to the Barony's bar and food services."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/barmaid

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERBARMAID

/datum/outfit/job/ms13/town_deadwater/barmaid
	name = "_Deadwater Barmaid"
	jobtype = /datum/job/ms13/town_deadwater/barmaid

	id =		 /obj/item/card/id/ms13/deadwater/deadwater_barmaid
	uniform =    /obj/item/clothing/under/ms13/wasteland/rag
	shoes =  	 /obj/item/clothing/shoes/ms13/rag
	belt = /obj/item/gun/ballistic/revolver/ms13/derringer

/datum/outfit/job/ms13/town_deadwater/barmaid/pre_equip(mob/living/carbon/human/H)
	..()

/datum/outfit/job/ms13/town_deadwater/barmaid/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(H.gender != FEMALE)
		H.gender = FEMALE
		H.body_type = FEMALE
