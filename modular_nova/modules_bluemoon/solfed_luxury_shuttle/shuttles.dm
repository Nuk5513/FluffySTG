/datum/map_template/shuttle/ruin/serenity2
	prefix = "_maps/shuttles/nova/"
	suffix = "solfed_luxury"
	description = "A small cargo jump freighter, popular among smugglers who enjoy both the cargo space and speed"
	name = "'Serenity II'"

/obj/machinery/computer/shuttle/serenity2
	name = "FSC 'Serenity II' Console"
	desc = "Used to control the FSC 'Serenity II'."
	circuit = /obj/item/circuitboard/computer/serenity2
	shuttleId = "serenity2"
	possible_destinations = "serenity2_home;serenity2_custom;whiteship_home"

/obj/machinery/computer/camera_advanced/shuttle_docker/serenity2
	name = "FSC 'Serenity II' Navigation Computer"
	desc = "Used to designate a precise transit location for the FSC 'Serenity II'."
	shuttleId = "serenity2"
	lock_override = NONE
	shuttlePortId = "serenity2_custom"
	jump_to_ports = list("serenity2_home" = 1, "whiteship_home" = 1)
	view_range = 0
	x_offset = 2
	y_offset = 0

/obj/item/circuitboard/computer/serenity2
	name = "FSC 'Serenity II' Control Console (Computer Board)"
	build_path = /obj/machinery/computer/shuttle/serenity2

/area/shuttle/serenity2
	name = "FSC 'Serenity II'"
	requires_power = FALSE
	fire_detect = FALSE

/area/shuttle/serenity2/cockpit
    name = "FSC 'Serenity II' Control Room"

/area/shuttle/serenity2/midship
    name = "FSC 'Serenity II' Midship Compartment"

/area/shuttle/serenity2/kitchen
    name = "FSC 'Serenity II' Kitchen"

/area/shuttle/serenity2/restroom
    name = "FSC 'Serenity II' Restroom"

/obj/docking_port/stationary/serenity2
	name = "SolFed Docking Port"
	shuttle_id = "serenity2_home"
	roundstart_template = /datum/map_template/shuttle/ruin/serenity2
	width = 10
	height = 22
	dheight = 8

/obj/docking_port/mobile/serenity2
	callTime = 10 SECONDS
	can_move_docking_ports = TRUE
	shuttle_id = "serenity2"
	launch_status = 0
	movement_force = list("KNOCKDOWN"=0,"THROW"=0)
	name = "FSC 'Serenity II'"
	port_direction = SOUTH
	preferred_direction = NORTH
	shuttle_areas = list(
		/area/shuttle/serenity2,
		/area/shuttle/serenity2/cockpit,
		/area/shuttle/serenity2/midship,
		/area/shuttle/serenity2/kitchen,
		/area/shuttle/serenity2/restroom
    )
