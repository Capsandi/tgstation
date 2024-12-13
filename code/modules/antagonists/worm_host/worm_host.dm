/datum/antagonist/worm_host
	name = "\improper Tapeworm Host"
	show_name_in_check_antagonists = TRUE
	suicide_cry = "FOR MY WORM!!"
	antag_hud_name = "tapeworm"
	antagpanel_category = ANTAG_GROUP_ABOMINATIONS
	job_rank = ROLE_WORM
	antag_moodlet = /datum/mood_event/focused
	ui_name = "AntagInfoWorm"

	/// This mob's offering ability
	var/datum/action/cooldown/worm_offering/offering

/datum/antagonist/worm_host/on_gain()
	. = ..()

/datum/antagonist/worm_host/greet()
	. = ..()
	owner.special_role = job_rank

	var/datum/objective/escape/addthis = new()
	addthis.owner = owner
	owner.announce_objectives()
