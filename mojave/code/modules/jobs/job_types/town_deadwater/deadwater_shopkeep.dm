/datum/job/ms13/town_deadwater/shopkeeper
	title = "Deadwater Shopkeeper"
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/shopkeeper

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERSHOPKEEP

/datum/outfit/job/ms13/town_deadwater/shopkeeper
	name = "_Deadwater Shopkeep"
	jobtype = /datum/job/ms13/town_deadwater/shopkeeper

	id =		 /obj/item/card/id/ms13/deadwater/deadwater_shopkeep
	suit =       /obj/item/clothing/suit/ms13/vest
	uniform =    /obj/item/clothing/under/ms13/wasteland/merchant
	shoes =  	 /obj/item/clothing/shoes/ms13/brownie
	suit_store = /obj/item/gun/ballistic/revolver/ms13/rev357
	r_pocket   = null
	l_pocket =   /obj/item/stack/ms13/currency/cap/hunnedtwentyfive
	back =       null

/datum/outfit/job/ms13/town_deadwater/shopkeeper/pre_equip(mob/living/carbon/human/H)
	..()
