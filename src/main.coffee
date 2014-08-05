Led = require "./led"
board = require "./board"
#------------------------

board.on "ready", ->
	console.log "Hello f*ckin' world :D"

	led = new Led 12
	setInterval led.toggle, 200