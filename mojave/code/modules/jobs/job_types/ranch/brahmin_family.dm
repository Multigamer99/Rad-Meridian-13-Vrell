/datum/job/ms13/ranch/brahminfamily
	title = "Brahmin Family"
	total_positions = 3
	spawn_positions = 3
	supervisors = "The Brahmin Baron"
	description = "You are the Family of the Brahmin Baron, help around the ranch."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/ranch/brahminfamily

	display_order = JOB_DISPLAY_ORDER_MS13_BRAHMINFAMILY

/datum/outfit/job/ms13/ranch/brahminfamily
	name = "_Brahmin Family"
	jobtype = /datum/job/ms13/ranch/brahminfamily

	id = 		 /obj/item/card/id/ms13/ranch/brahminbaron
	uniform = /obj/item/clothing/under/ms13/wasteland/heeledsuit
	shoes = 	 /obj/item/clothing/shoes/ms13/fancy


/datum/outfit/job/ms13/ranch/brahminfamily/pre_equip(mob/living/carbon/human/H)
	..()
