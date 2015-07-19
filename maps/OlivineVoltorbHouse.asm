OlivineVoltorbHouse_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

Tim:
	faceplayer
	loadfont
	trade $2
	closetext
	loadmovesprites
	end

TimsHouseBookshelf:
	jumpstd magazinebookshelf

OlivineVoltorbHouse_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 3, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY
	warp_def $7, $3, 3, GROUP_OLIVINE_CITY, MAP_OLIVINE_CITY

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 1, 0, SIGNPOST_READ, TimsHouseBookshelf
	signpost 1, 1, SIGNPOST_READ, TimsHouseBookshelf

	; people-events
	db 1
	person_event SPRITE_FISHING_GURU, 7, 6, OW_DOWN | $3, $0, -1, -1, (PAL_OW_RED << 4) | $80, 0, Tim, -1
