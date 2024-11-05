/datum/job/ms13/church/missionary
	title = "Missionary"
	total_positions = 3
	spawn_positions = 3
	supervisors = "The Priest, God, And John Moses Browning"
	
	description = "You are a drug cook for the Slickbacks. Not quite an actual, respected member of the gang but instead more of a lackey with the knowledge to make their chems so the gang can turn a profit, and some medical experience to tend their wounds."
	forbid = ""
	enforce = "The Slickbacks expect: Profitable operations, professional conduct and behavior, doing what is needed and best for the gang, but still within reason."

	outfit = /datum/outfit/job/ms13/church/missionary

	display_order = JOB_DISPLAY_ORDER_MS13_MISSIONARY

/datum/outfit/job/ms13/church/missionary
	name = "_Missionary"
	jobtype = /datum/job/ms13/church/missionary

	l_pocket =	 /obj/item/stack/ms13/currency/prewar/twenty
	r_pocket =	 /obj/item/flashlight/flare/ms13
	id =		 /obj/item/card/id/ms13/church/missionary
	uniform = /obj/item/clothing/under/ms13/wasteland/canaan
	shoes =		 /obj/item/clothing/shoes/ms13/brownie
	suit = /obj/item/clothing/suit/armor/ms13/vest 
	head = /obj/item/clothing/head/helmet/ms13/cowboy/black
	belt = /obj/item/gun/ballistic/automatic/pistol/ms13/pistol45 


/datum/outfit/job/ms13/church/missionary/pre_equip(mob/living/carbon/human/H)
	..()
