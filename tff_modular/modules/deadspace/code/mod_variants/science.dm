/datum/mod_theme/research/New()
	variants += list(
		"hacker" = list(
			MOD_ICON_OVERRIDE = 'tff_modular/modules/deadspace/icons/obj/clothing/mod_clothing.dmi',
			MOD_WORN_ICON_OVERRIDE = 'tff_modular/modules/deadspace/icons/mob/clothing/mod_clothing.dmi',
			/obj/item/clothing/head/mod = list(
				UNSEALED_LAYER = WOUND_LAYER,
				UNSEALED_CLOTHING = SNUG_FIT,
				SEALED_CLOTHING = THICKMATERIAL|STOPSPRESSUREDAMAGE,
				UNSEALED_INVISIBILITY = HIDEFACIALHAIR,
				SEALED_INVISIBILITY = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDESNOUT,
				SEALED_COVER = HEADCOVERSMOUTH|HEADCOVERSEYES|PEPPERPROOF,
			),
			/obj/item/clothing/suit/mod = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				SEALED_INVISIBILITY = HIDEJUMPSUIT,
			),
			/obj/item/clothing/gloves/mod = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
			/obj/item/clothing/shoes/mod = list(
				UNSEALED_CLOTHING = THICKMATERIAL,
				SEALED_CLOTHING = STOPSPRESSUREDAMAGE,
				CAN_OVERSLOT = TRUE,
			),
		),
	)

/datum/mod_theme/mining/set_skin(obj/item/mod/control/mod, skin)
	. = ..()
	if(skin == "hacker")
		for(var/obj/item/clothing/mod_part in mod.get_parts())
			if(istype(mod_part, /obj/item/clothing/suit) || istype(mod_part, /obj/item/clothing/shoes) )
				mod_part.worn_icon_digi = 'tff_modular/modules/deadspace/icons/mob/clothing/mod_clothing_mutant.dmi'
