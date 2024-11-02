/datum/job/ms13/ranch/farmhand
	title = "Farm Hand"
	total_positions = 4
	spawn_positions = 4
	supervisors = "The Ranch Owner"
	description = ""
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/ranch/farmhand

	display_order = JOB_DISPLAY_ORDER_MS13_FARMHAND

/datum/outfit/job/ms13/ranch/farmhand
	name = "_Farm Hand"
	jobtype = /datum/job/ms13/ranch/farmhand

	id = 		 /obj/item/card/id/ms13/ranch/farmhand
	shoes = 	 /obj/item/clothing/shoes/ms13/brownie
	uniform = 	 /obj/item/clothing/under/ms13/wasteland/rancher
	r_pocket =   /obj/item/radio/ms13
	l_pocket =	 /obj/item/stack/ms13/currency/prewar/hunned
	r_hand =	 /obj/item/storage/ms13/toolbox/filled


/datum/outfit/job/ms13/ranch/farmhand/pre_equip(mob/living/carbon/human/H)
	..()
