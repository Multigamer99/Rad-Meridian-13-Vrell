/datum/job/ms13/deadriver/church/acolyte
	title = "Acolyte"
	total_positions = 4
	spawn_positions = 4
	supervisors = "Bishop"
	description = "Sisters and Brothers of the Church, your role is to assist the Bishop and Followers in their duties."

	outfit = /datum/outfit/job/ms13/deadriver/church/acolyte

	display_order = JOB_DISPLAY_ORDER_MS13_DEADRIVER_CHURCH_ACOLYTE

/datum/outfit/job/ms13/deadriver/church/acolyte
	name = "_Acolyte"
	jobtype = /datum/job/ms13/deadriver/church/acolyte

	id = 		 /obj/item/card/id/ms13/doctor
	uniform =    /obj/item/clothing/under/ms13/wasteland/canaan
	suit =		 /obj/item/clothing/suit/armor/ms13/vest
	suit_store = null
	head = 		 /obj/item/clothing/head/helmet/ms13/cowboy/black
	shoes =  	 /obj/item/clothing/shoes/ms13/fancy
	belt = 		 /obj/item/gun/ballistic/automatic/pistol/ms13/pistol45
	l_pocket =   /obj/item/ammo_box/ms13/c45


/datum/outfit/job/ms13/deadriver/church/acolyte/pre_equip(mob/living/carbon/human/H)
	..()
