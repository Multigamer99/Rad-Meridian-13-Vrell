/datum/job/ms13/town_deadwater/shopguard
	title = "Deadwater Shop Guard"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Shopkeeper"
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/shopguard

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERSHOPGUARD

/datum/outfit/job/ms13/town_deadwater/shopguard
	name = "_Deadwater Shop Guard"
	jobtype = /datum/job/ms13/town_deadwater/shopguard

	id =		 /obj/item/card/id/ms13/deadwater/deadwater_shopguard
	suit =       /obj/item/clothing/suit/armor/ms13/vest/civilian
	head =		 /obj/item/clothing/suit/ms13/ljacket
	uniform =    /obj/item/clothing/under/ms13/wasteland/guard
	shoes =  	 /obj/item/clothing/shoes/ms13/military
	suit_store = /obj/item/gun/ballistic/revolver/ms13/caravan
	r_pocket   = /obj/item/ammo_box/ms13/shotgun/buckshot
	l_pocket =   /obj/item/stack/ms13/currency/cap/hunnedtwentyfive
	back =       null

/datum/outfit/job/ms13/town_deadwater/shopguard/pre_equip(mob/living/carbon/human/H)
	..()
