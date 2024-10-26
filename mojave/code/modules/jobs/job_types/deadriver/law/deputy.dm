/datum/job/ms13/deadriver/law/deputy
	title = "Deputy"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Sheriff."
	description = "Assist the Sheriff in his duties, try not to die."

	outfit = /datum/outfit/job/ms13/deadriver/law/deputy

	display_order = JOB_DISPLAY_ORDER_MS13_DEADRIVER_LAW_DEPUTY

/datum/outfit/job/ms13/deadriver/law/deputy
	name = "_Deputy"
	jobtype = /datum/job/ms13/deadriver/law/deputy

	id = 		 /obj/item/card/id/ms13/deputy
	uniform =    /obj/item/clothing/under/ms13/wasteland/cowboy
	suit =		 /obj/item/clothing/suit/ms13/vest/brown
	suit_store = null
	head = 		 /obj/item/clothing/head/helmet/ms13/cowboy/black
	shoes =  	 /obj/item/clothing/shoes/ms13/cowboy
	belt = 		 /obj/item/gun/ballistic/revolver/ms13/rev44
	l_pocket =   /obj/item/ammo_box/ms13/m44box
	back =       null

/datum/outfit/job/ms13/deadriver/law/deputy/pre_equip(mob/living/carbon/human/H)
	..()
