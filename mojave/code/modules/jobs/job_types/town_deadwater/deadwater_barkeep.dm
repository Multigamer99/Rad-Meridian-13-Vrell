/datum/job/ms13/town_deadwater/barkeep
	title = "Barkeep"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/barkeep

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERBARKEEP

/datum/outfit/job/ms13/town_deadwater/barkeep
	name = "_Barony Barkeep"
	jobtype = /datum/job/ms13/town_deadwater/barkeep

	id =		 /obj/item/card/id/ms13/deadwater/deadwater_barkeep
	suit =       /obj/item/clothing/suit/ms13/vest
	uniform =    /obj/item/clothing/under/ms13/wasteland/barmansuit
	shoes =  	 /obj/item/clothing/shoes/ms13/fancy
	suit_store = /obj/item/gun/ballistic/revolver/ms13/caravan
	r_pocket   = /obj/item/ammo_box/ms13/shotgun/buckshot
	l_pocket =   /obj/item/stack/ms13/currency/cap/hunnedtwentyfive
	back =       null

/datum/outfit/job/ms13/town_deadwater/barkeep/pre_equip(mob/living/carbon/human/H)
	..()
