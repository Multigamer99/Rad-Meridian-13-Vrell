/datum/job/ms13/town_deadwater/deadwater_settler
	title = "Deadwater Settler"
	total_positions = -1 //Infinite
	spawn_positions = -1 //Infinite
	supervisors = "null"
	description = "null"
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/town_deadwater/deadwater_settler

	display_order = JOB_DISPLAY_ORDER_MS13_DEADWATERSETTLER

/datum/outfit/job/ms13/town_deadwater/deadwater_settler
	name = "_Settler"
	jobtype = /datum/job/ms13/town_deadwater/deadwater_settler

	id =		 /obj/item/card/id/ms13/deadwater/deadwater_settler
	r_pocket =   /obj/item/stack/ms13/currency/cap/thirtyfive
	back =       null

/datum/outfit/job/ms13/town_deadwater/deadwater_settler/pre_equip(mob/living/carbon/human/H)
	..()

	uniform = pick(
			/obj/item/clothing/under/ms13/wasteland/pants,\
			/obj/item/clothing/under/ms13/wasteland/rag,\
			/obj/item/clothing/under/ms13/wasteland/worn,\
			/obj/item/clothing/under/ms13/wasteland/peasant,\
			/obj/item/clothing/under/ms13/wasteland/wanderer,\
			/obj/item/clothing/under/ms13/wasteland/rancher,\
			/obj/item/clothing/under/ms13/wasteland/vestslacks,\
			/obj/item/clothing/under/ms13/wasteland/merchant)

	shoes = pick(
			/obj/item/clothing/shoes/ms13/crude,\
			/obj/item/clothing/shoes/ms13/rag,\
			/obj/item/clothing/shoes/ms13/tan,\
			/obj/item/clothing/shoes/ms13/brownie)

	if(prob(35))
		belt = pick(
			/obj/item/knife/ms13, \
			/obj/item/knife/ms13/switchblade/razor, \
			/obj/item/ms13/hammer, \
			/obj/item/ms13/knuckles, \
			/obj/item/crowbar/ms13)
	else
		belt = null

	if(prob(20))
		glasses = pick(/obj/item/clothing/glasses/ms13/leather,\
		/obj/item/clothing/glasses/ms13/old,\
		/obj/item/clothing/glasses/ms13/goggles)
	else
		glasses = null

	if(prob(40))
		suit = pick(
			/obj/item/clothing/suit/ms13/ljacket/moleskin,\
			/obj/item/clothing/suit/ms13/ljacket/wanderer,\
			/obj/item/clothing/suit/ms13/ljacket/military,\
			/obj/item/clothing/suit/ms13/ljacket/musty,\
			/obj/item/clothing/suit/ms13/vest,\
			/obj/item/clothing/suit/ms13/vest/brown)

	if(prob(25))
		head = pick(
			/obj/item/clothing/head/ms13/hood/cowl,\
			/obj/item/clothing/head/helmet/ms13/newsboy,\
			/obj/item/clothing/head/helmet/ms13/baseball,\
			/obj/item/clothing/head/helmet/ms13/cowboy,\
			/obj/item/clothing/head/helmet/ms13/bandanacap,\
			/obj/item/clothing/head/helmet/ms13/trilby)
