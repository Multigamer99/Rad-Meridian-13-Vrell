/datum/job/ms13/town_deadwater/chef
	title = "Chef"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Your Pride in the Culinary Arts, Barkeep"
	description = "Cook up food, feed people but not for free of course"
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/chef

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERCHEF

/datum/outfit/job/ms13/town_deadwater/chef
	name = "_Chef"
	jobtype = /datum/job/ms13/town_deadwater/chef

	head = 		 /obj/item/clothing/head/helmet/ms13/chef
	uniform =	 /obj/item/clothing/under/ms13/wasteland/whiteshirt
	shoes =		 /obj/item/clothing/shoes/ms13/fancy
	belt =		 /obj/item/knife/ms13
	suit =		 /obj/item/clothing/suit/apron

/datum/outfit/job/ms13/town_deadwater/chef/pre_equip(mob/living/carbon/human/H)
	..()
