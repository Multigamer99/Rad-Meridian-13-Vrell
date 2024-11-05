/datum/job/ms13/church/priest
	title = "Priest"
	total_positions = 1
	spawn_positions = 1
	supervisors = "God and John Moses Browning"
	description = "You are one of the Local Leaders of this settlement. A new Canaanite. Help to keep it prosper. "
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/church/priest

	display_order = JOB_DISPLAY_ORDER_MS13_PRIEST

	mind_traits = list(TRAIT_MEDICAL_TRAINING, TRAIT_DRUGGIE)

/datum/outfit/job/ms13/church/priest
	name = "_Priest"
	jobtype = /datum/job/ms13/church/priest

	l_pocket =	 /obj/item/stack/ms13/currency/cap/hunnedtwentyfive
	id =		 /obj/item/card/id/ms13/church/priest
	uniform =	 /obj/item/clothing/under/ms13/wasteland/whiteshirt
	shoes =		 /obj/item/clothing/shoes/ms13/fancy
	suit_store = /obj/item/gun/ballistic/automatic/pistol/ms13/pistol45/stallion
	suit =		 /obj/item/clothing/suit/armor/ms13/vest
	r_hand = /obj/item/radio/ms13/broadcast
	head = /obj/item/clothing/head/helmet/ms13/prospector


/datum/outfit/job/ms13/church/priest/pre_equip(mob/living/carbon/human/H)
	..()
