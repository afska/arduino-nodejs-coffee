require "./utils/include"
Led = include "devices/led"
board = include "board/board"
#------------------------

board.on "ready", ->
	console.log "Hello f*ckin' world :D"

	led = new Led 12
	setInterval led.toggle, 200