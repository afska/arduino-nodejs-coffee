require "./utils/include"
Led = include "devices/led"
board = include "board"
#------------------------

board.on "ready", ->
	console.log "Hello f*ckin' world :D"

	new Led(12)
		.blink(100)