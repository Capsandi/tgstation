/obj/projectile/seedling
	name = "solar energy"
	icon_state = "seedling"
	damage = 10
	damage_type = BURN
	light_range = 2
	armor_flag = ENERGY
	light_color = LIGHT_COLOR_DIM_YELLOW
	speed = 0.66
	hitsound = 'sound/items/weapons/sear.ogg'
	hitsound_wall = 'sound/items/weapons/effects/searwall.ogg'
	nondirectional_sprite = TRUE

/obj/projectile/seedling/on_hit(atom/target, blocked = 0, pierce_hit)
	if(!isliving(target))
		return ..()

	var/mob/living/living_target = target
	if(FACTION_JUNGLE in living_target.faction)
		return BULLET_ACT_BLOCK

	return ..()

/obj/effect/temp_visual/solarbeam_killsat
	name = "beam of solar energy"
	icon_state = "solar_beam"
	icon = 'icons/effects/beam.dmi'
	plane = LIGHTING_PLANE
	layer = LIGHTING_PRIMARY_LAYER
	duration = 3 SECONDS
	alpha = 200
	randomdir = FALSE
