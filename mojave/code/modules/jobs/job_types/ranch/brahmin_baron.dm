/datum/job/ms13/ranch/brahminbaron
	title = "Brahmin Baron"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The market"
	description = "You are the proud Owner of a Ranch. Protect it with your life."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/ranch/brahminbaron

	display_order = JOB_DISPLAY_ORDER_MS13_BRAHMINBARON

/datum/outfit/job/ms13/ranch/brahminbaron
	name = "_Brahmin Baron"
	jobtype = /datum/job/ms13/ranch/brahminbaron

	id = 		 /obj/item/card/id/ms13/ranch/brahminbaron
	head =       /obj/item/clothing/head/helmet/ms13/cowboy
	uniform = /obj/item/clothing/under/ms13/wasteland/heeledsuit
	shoes = 	 /obj/item/clothing/shoes/ms13/fancy
	r_pocket =   /obj/item/stack/ms13/currency/cap/hunnedtwentyfive
	belt =     /obj/item/gun/ballistic/revolver/ms13/rev44
	l_pocket = /obj/item/ammo_box/ms13/m44box 


/datum/outfit/job/ms13/ranch/brahminbaron/pre_equip(mob/living/carbon/human/H)
	..()
