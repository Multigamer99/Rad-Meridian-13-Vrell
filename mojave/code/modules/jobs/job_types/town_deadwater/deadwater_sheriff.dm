/datum/job/ms13/town_deadwater/deadwater_sheriff
	title = "Deadwater Sheriff"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Law of the Land, and the big iron on your hip"
	description = "Enforce the Mayor's law upon the Town with the assistance of your Deputies."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/deadwater_sheriff

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERSHERIFF

/datum/outfit/job/ms13/town_deadwater/deadwater_sheriff
	name = "_Deadwater Sheriff"
	jobtype = /datum/job/ms13/town_deadwater/deadwater_sheriff

	id = 		 /obj/item/card/id/ms13/sheriff
	head = 	     /obj/item/clothing/head/helmet/ms13/sheriff
	suit =       /obj/item/clothing/suit/ms13/trench/black/reinf
	uniform =    /obj/item/clothing/under/ms13/wasteland/cowboy/grey
	gloves = 	 /obj/item/clothing/gloves/ms13/vault
	shoes =  	 /obj/item/clothing/shoes/ms13/military/vault
	suit_store = /obj/item/gun/ballistic/shotgun/ms13/lever/brush
	belt = 		 /obj/item/gun/ballistic/automatic/pistol/ms13/m10mm/military
	r_pocket =   /obj/item/stack/ms13/currency/prewar/hunnedtwenty
	l_pocket = 	 null
	back =       /obj/item/storage/ms13/vault
	backpack_contents = list(
		/obj/item/stack/medical/gauze/ms13/half=1, \
		/obj/item/stack/medical/ointment/ms13/half=1, \
		/obj/item/claymore/ms13/baton=1, \
		/obj/item/flashlight/ms13=1, \
		/obj/item/radio/ms13/broadcast/advanced=1)

/datum/outfit/job/ms13/town_deadwater/deadwater_sheriff/pre_equip(mob/living/carbon/human/H)
	..()
