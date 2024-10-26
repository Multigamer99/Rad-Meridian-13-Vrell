/datum/job/ms13/deadriver/church/follower
	title = "Follower"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Bishop"
	description = "Followers of the Apocalypse, you have come to here in order to help the people of the wastes, working with the church to do so."

	outfit = /datum/outfit/job/ms13/deadriver/church/follower

	display_order = JOB_DISPLAY_ORDER_MS13_DEADRIVER_CHURCH_FOLLOWER

/datum/outfit/job/ms13/deadriver/church/follower
	name = "_Follower"
	jobtype = /datum/job/ms13/deadriver/church/follower

	id = 		 /obj/item/card/id/ms13/doctor
	uniform =    /obj/item/clothing/under/ms13/wasteland/snowcrest/medical
	suit =		 /obj/item/clothing/suit/ms13/vaultlab
	suit_store = null
	head = 		 null
	shoes =  	 /obj/item/clothing/shoes/ms13/fancy
	gloves = /obj/item/clothing/gloves/ms13/nitrile
	belt = 		 /obj/item/storage/firstaid/ms13/regular
	back =       /obj/item/storage/ms13/satchel
    backpack_contents = list(\
		/obj/item/stack/medical/ointment/ms13/half=1,\
        /obj/item/stack/medical/suture/ms13/eight=1,\
        /obj/item/stack/medical/gauze/ms13/half=1,\
	)


/datum/outfit/job/ms13/deadriver/church/follower/pre_equip(mob/living/carbon/human/H)
	..()
