/datum/job/ms13/deadriver/church/bishop
	title = "Bishop"
	total_positions = 1
	spawn_positions = 1
	supervisors = "God and John Moses Browning"
	description = "Community Leader of the Town, A New Canaanite that has settled the area. Your role is to help lead the community to prosperity and peace in the name of your lord"

	outfit = /datum/outfit/job/ms13/deadriver/church/bishop

	display_order = JOB_DISPLAY_ORDER_MS13_DEADRIVER_CHURCH_BISHOP

/datum/outfit/job/ms13/deadriver/church/bishop
	name = "_Bishop"
	jobtype = /datum/job/ms13/deadriver/church/bishop

	id = 		 /obj/item/card/id/ms13/mayor
	uniform =    /obj/item/clothing/under/ms13/wasteland/whiteshirt
	suit =		 /obj/item/clothing/suit/armor/ms13/vest
	suit_store = null
	head = 		 /obj/item/clothing/head/helmet/ms13/prospector
	shoes =  	 /obj/item/clothing/shoes/ms13/fancy
	belt = 		 /obj/item/gun/ballistic/automatic/pistol/ms13/pistol45/stallion
	r_hand =	 /obj/item/radio/ms13/broadcast // Vrell - Saving for later: /obj/item/radio/ms13/broadcast/advanced
	r_pocket =   /obj/item/stack/ms13/currency/cap
	l_pocket =   null
	back =       null

/datum/outfit/job/ms13/deadriver/church/bishop/pre_equip(mob/living/carbon/human/H)
	..()
