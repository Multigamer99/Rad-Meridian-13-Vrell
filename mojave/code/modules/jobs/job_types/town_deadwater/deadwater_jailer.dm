/datum/job/ms13/town_deadwater/deadwater_jailer
	title = "Deadwater Jailer"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Sheriff"
	description = "Manage any prisoners that come into your prison."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/deadwater_jailer

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERJAILER

/datum/outfit/job/ms13/town_deadwater/deadwater_jailer
	name = "_Deadwater Jailer"
	jobtype = /datum/job/ms13/town_deadwater/deadwater_jailer

	id = 		 /obj/item/card/id/ms13/deadwater/deadwater_jailer
	head =		 /obj/item/clothing/head/helmet/ms13/deputy
	uniform =    /obj/item/clothing/under/ms13/wasteland/cowboy/tan
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault
	belt = 		 /obj/item/gun/ballistic/automatic/pistol/ms13/m10mm
	r_pocket =	 /obj/item/ammo_box/magazine/ms13/m10mm
	l_pocket =   /obj/item/stack/ms13/currency/prewar/eighty
	back =       /obj/item/storage/ms13/vault
	backpack_contents = list(
		/obj/item/stack/medical/gauze/ms13/three=1, \
		/obj/item/claymore/ms13/baton=1, \
		/obj/item/flashlight/ms13=1, \
		/obj/item/radio/ms13=1)

/datum/outfit/job/ms13/town_deadwater/deadwater_jailer/pre_equip(mob/living/carbon/human/H)
	..()
