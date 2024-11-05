/datum/job/ms13/church/follower
	title = "Follower of the Appocolypse"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Priest"
	description = "Followers of the Apocalypse, you have come here in order to help the people of the wastes, working with the church to do so."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/church/follower

	display_order = JOB_DISPLAY_ORDER_MS13_FOLLOWER

	mind_traits = list(TRAIT_MEDICAL_TRAINING, TRAIT_DRUGGIE)

/datum/outfit/job/ms13/church/follower
	name = "_Follower of the Appocolypse"
	jobtype = /datum/job/ms13/church/follower

	r_pocket =   /obj/item/stack/ms13/currency/prewar/hunnedeighty
	r_hand =	 /obj/item/clothing/mask/gas/ms13
	id =		 /obj/item/card/id/ms13/church/follower
	uniform =	 /obj/item/clothing/under/ms13/wasteland/followers
	gloves =	 /obj/item/clothing/gloves/ms13/nitrile
	shoes =		 /obj/item/clothing/shoes/ms13/fancy
	belt =		/obj/item/storage/firstaid/ms13/regular
	suit =		 /obj/item/clothing/suit/toggle/labcoat/ms13
	back = /obj/item/storage/ms13/satchel
	backpack_contents = list(/obj/item/stack/medical/ointment/ms13/half=1,\
        /obj/item/stack/medical/suture/ms13/eight=1,\
        /obj/item/stack/medical/gauze/ms13/half=1,\
)


/datum/outfit/job/ms13/church/follower/pre_equip(mob/living/carbon/human/H)
	..()
