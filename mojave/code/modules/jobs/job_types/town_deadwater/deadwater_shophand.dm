/datum/job/ms13/town_deadwater/shophand
	title = "Deadwater Shop Hand"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Shopkeep"
	description = "Assist the Shopkeep"
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/shophand

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERSHOPHAND

/datum/outfit/job/ms13/town_deadwater/shophand
	name = "_Deadwater Shop Hand"
	jobtype = /datum/job/ms13/town_deadwater/shophand

	id =		 /obj/item/card/id/ms13/deadwater/deadwater_shophand
	suit =       /obj/item/clothing/suit/ms13/vest
	uniform =    /obj/item/clothing/under/ms13/wasteland/vestslacks
	shoes =  	 /obj/item/clothing/shoes/ms13/brownie
	l_pocket =   /obj/item/stack/ms13/currency/cap/hunnedtwentyfive
	back =       null

/datum/outfit/job/ms13/town_deadwater/shophand/pre_equip(mob/living/carbon/human/H)
	..()
