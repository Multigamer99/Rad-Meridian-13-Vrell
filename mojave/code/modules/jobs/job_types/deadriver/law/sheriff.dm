/datum/job/ms13/deadriver/law/sheriff
	title = "Sheriff"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Law of the Land and the big iron on your hip."
	description = "Work to keep the peace between the different groups of Dead River"

	outfit = /datum/outfit/job/ms13/deadriver/law/sheriff

	display_order = JOB_DISPLAY_ORDER_MS13_DEADRIVER_LAW_SHERIFF

/datum/outfit/job/ms13/deadriver/law/sheriff
	name = "_Sheriff"
	jobtype = /datum/job/ms13/deadriver/law/sheriff

	id = 		 /obj/item/card/id/ms13/sheriff
	uniform =    /obj/item/clothing/under/ms13/wasteland/cowboy
	suit =		 /obj/item/clothing/suit/ms13/vest/black 
	suit_store = null
	head = 		 /obj/item/clothing/head/helmet/ms13/cowboy
	shoes =  	 /obj/item/clothing/shoes/ms13/cowboy
	belt = 		 /obj/item/gun/ballistic/revolver/ms13/rev44/mysterious
	r_hand =	 /obj/item/radio/ms13/broadcast
	r_pocket =   /obj/item/stack/ms13/currency/cap
	l_pocket =   /obj/item/ammo_box/ms13/m44box
	back =       null

/datum/outfit/job/ms13/deadriver/law/sheriff/pre_equip(mob/living/carbon/human/H)
	..()
