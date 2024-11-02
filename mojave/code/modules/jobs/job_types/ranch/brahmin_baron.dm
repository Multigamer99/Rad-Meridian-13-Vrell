/datum/job/ms13/ranch/brahminbaron
	title = "Brahmin Baron"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The market"
	description = ""
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
	l_pocket =	 /obj/item/stack/ms13/currency/prewar/hunned


/datum/outfit/job/ms13/ranch/brahminbaron/pre_equip(mob/living/carbon/human/H)
	..()
