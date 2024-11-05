/datum/job/ms13/church/churchling
	title = "Churchling"
	total_positions = 6
	spawn_positions = 6
	supervisors = "The Priest, God, And John Moses Browning"
	description =  "You assist the church in menial tasks."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/church/churchling

	display_order = JOB_DISPLAY_ORDER_MS13_CHURCHLING

/datum/outfit/job/ms13/church/churchling
	name = "_Churchling"
	jobtype = /datum/job/ms13/church/churchling

	l_pocket =	 /obj/item/stack/ms13/currency/prewar/twenty
	id =		 /obj/item/card/id/ms13/church/churchling
	uniform =	 /obj/item/clothing/under/ms13/wasteland/church
	shoes =		 /obj/item/clothing/shoes/ms13/brownie
	belt = /obj/item/gun/ballistic/automatic/pistol/ms13/pistol45

/datum/outfit/job/ms13/church/churchling/pre_equip(mob/living/carbon/human/H)
	..()
