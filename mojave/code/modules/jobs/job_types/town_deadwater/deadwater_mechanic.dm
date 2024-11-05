/datum/job/ms13/town_deadwater/mechanic
	title = "Mechanic"
	total_positions = 2
	spawn_positions = 2
	supervisors = "null"
	description = "null"
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/mechanic

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERMECHANIC

/datum/outfit/job/ms13/town_deadwater/mechanic
	name = "_Mechanic"
	jobtype = /datum/job/ms13/town_deadwater/mechanic

	id = /obj/item/card/id/ms13/deadwater/deadwater_mechanic
	head = /obj/item/clothing/head/welding/ms13
	suit = null
	shoes = /obj/item/clothing/shoes/ms13/brownie
	suit_store = null
	r_hand = /obj/item/storage/ms13/toolbox/filled
	l_hand = /obj/item/gun/ballistic/automatic/pistol/ms13/m9mm
	r_pocket   = null
	l_pocket =   null

/datum/outfit/job/ms13/town_deadwater/mechanic/pre_equip(mob/living/carbon/human/H)
	..()
	
	uniform = pick(
			/obj/item/clothing/under/ms13/wasteland/mechanicprewar/mechanicgrey,\
			/obj/item/clothing/under/ms13/wasteland/mechanicprewar/mechanicgreen)
