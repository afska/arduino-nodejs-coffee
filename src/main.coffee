#class Led
#	constructor: (@pin) ->
#		@on = false
#
#	toggle: =>
#		@on = !@on
#		if @on then @on()
#		else @off()

five = require "johnny-five"
board = new five.Board()
toggleState = false

board.on "ready", ->
	led = five.Led 12

	toggleLed = ->
		toggleState = !toggleState

		if toggleState then led.on()
		else led.off()

	setInterval toggleLed, 200

console.log("Waiting for the device :O\n");