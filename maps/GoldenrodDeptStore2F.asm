GoldenrodDeptStore2F_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

ClerkScript_0x55b5d:
	faceplayer
	loadfont
	pokemart $0, $0005
	loadmovesprites
	end

ClerkScript_0x55b65:
	faceplayer
	loadfont
	pokemart $0, $0006
	loadmovesprites
	end

YoungsterScript_0x55b6d:
	jumptextfaceplayer UnknownText_0x55c25

CooltrainerFScript_0x55b70:
	jumptextfaceplayer UnknownText_0x55c7b

GentlemanScript_0x55b73:
	jumptextfaceplayer UnknownText_0x55cb7

GoldenrodDeptStore2FDirectory:
	jumptext GoldenrodDeptStore2FDirectoryText

GoldenrodDeptStore2FElevatorButton:
	jumpstd elevatorbutton

; possibly unused
UnknownText_0x55b7c:
	text "We intend to sell"
	line "items for #MON"
	cont "to hold."

	para "This is a free"
	line "gift. Have a #-"
	cont "MON hold it."
	done

; possibly unused
UnknownText_0x55bd3:
	text "By giving #MON"
	line "items to hold, I"

	para "bet trainers will"
	line "develop new battle"
	cont "techniques."
	done

UnknownText_0x55c25:
	text "#GEAR can store"
	line "up to ten phone"
	cont "numbers."

	para "It's hard to de-"
	line "cide which numbers"
	cont "to keep."
	done

UnknownText_0x55c7b:
	text "I got my ABRA at"
	line "the GAME CORNER."

	para "Now it's my best"
	line "partner."
	done

UnknownText_0x55cb7:
	text "This DEPT.STORE"
	line "makes me realize"

	para "that GOLDENROD is"
	line "a big city."

	para "The selection here"
	line "is unmatched any-"
	cont "where else."
	done

GoldenrodDeptStore2FDirectoryText:
	text "Your Travel"
	line "Companion"

	para "2F TRAINER'S"
	line "   MARKET"
	done

GoldenrodDeptStore2F_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 3
	warp_def $0, $c, 1, GROUP_GOLDENROD_DEPT_STORE_3F, MAP_GOLDENROD_DEPT_STORE_3F
	warp_def $0, $f, 3, GROUP_GOLDENROD_DEPT_STORE_1F, MAP_GOLDENROD_DEPT_STORE_1F
	warp_def $0, $2, 1, GROUP_GOLDENROD_DEPT_STORE_ELEVATOR, MAP_GOLDENROD_DEPT_STORE_ELEVATOR

	; xy triggers
	db 0

	; signposts
	db 2
	signpost 0, 14, SIGNPOST_READ, GoldenrodDeptStore2FDirectory
	signpost 0, 3, SIGNPOST_READ, GoldenrodDeptStore2FElevatorButton

	; people-events
	db 5
	person_event SPRITE_CLERK, 9, 17, OW_UP | $3, $0, -1, -1, $0, 0, ClerkScript_0x55b5d, -1
	person_event SPRITE_CLERK, 10, 17, OW_LEFT | $0, $0, -1, -1, $0, 0, ClerkScript_0x55b65, -1
	person_event SPRITE_YOUNGSTER, 10, 13, OW_UP | $0, $10, -1, -1, $0, 0, YoungsterScript_0x55b6d, -1
	person_event SPRITE_COOLTRAINER_F, 6, 10, OW_UP | $1, $2, -1, -1, (PAL_OW_RED << 4) | $80, 0, CooltrainerFScript_0x55b70, -1
	person_event SPRITE_GENTLEMAN, 10, 6, OW_DOWN | $3, $0, -1, -1, $0, 0, GentlemanScript_0x55b73, -1
