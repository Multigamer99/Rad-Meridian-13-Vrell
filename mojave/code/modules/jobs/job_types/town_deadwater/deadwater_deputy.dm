/datum/job/ms13/town_deadwater/deadwater_deputy
	title = "Deadwater Deputy"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The Sheriff"
	description = "Assist the Sheriff in enforcing the laws of the town."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/deadwater_deputy

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERDEPUTY

/datum/outfit/job/ms13/town_deadwater/deadwater_deputy
	name = "_Deadwater Deputy"
	jobtype = /datum/job/ms13/town_deadwater/deadwater_deputy

	id = 		 /obj/item/card/id/ms13/deadwater/deadwater_deputy
    suit = /obj/item/clothing/suit/ms13/vest/brown
    suit_store =
    uniform = /obj/item/clothing/under/ms13/wasteland/cowboy
    head = /obj/item/clothing/head/helmet/ms13/cowboy/black
    shoes = /obj/item/clothing/shoes/ms13/cowboy
    belt = /obj/item/gun/ballistic/revolver/ms13/rev44
    gloves = null
    r_hand = null
    r_pocket = null
    l_pocket = /obj/item/ammo_box/ms13/m44box 
    back = null
    backpack_contents = list()

/datum/outfit/job/ms13/town_deadwater/deadwater_deputy/pre_equip(mob/living/carbon/human/H)
	..()
