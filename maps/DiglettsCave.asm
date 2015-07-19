DiglettsCave_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

PokefanMScript_0x74002:
	jumptextfaceplayer UnknownText_0x74008

MapDiglettsCaveSignpostItem0:
	dwb EVENT_DIGLETTS_CAVE_HIDDEN_MAX_REVIVE, MAX_REVIVE
	

UnknownText_0x74008:
	text "A bunch of DIGLETT"
	line "popped out of the"

	para "ground! That was"
	line "shocking."
	done

DiglettsCave_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $21, $3, 10, GROUP_VERMILION_CITY, MAP_VERMILION_CITY
	warp_def $1f, $5, 5, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE
	warp_def $5, $f, 5, GROUP_ROUTE_2, MAP_ROUTE_2
	warp_def $3, $11, 6, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE
	warp_def $21, $11, 2, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE
	warp_def $3, $3, 4, GROUP_DIGLETTS_CAVE, MAP_DIGLETTS_CAVE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 11, 6, SIGNPOST_ITEM, MapDiglettsCaveSignpostItem0

	; people-events
	db 1
	person_event SPRITE_POKEFAN_M, 35, 7, OW_UP | $2, $0, -1, -1, $0, 0, PokefanMScript_0x74002, -1
