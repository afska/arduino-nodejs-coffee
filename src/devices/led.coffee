board = include "board"
module.exports = #-----------

class Led
	constructor: (@pin) ->
		@value = LOW
		board.setPinAsOutput @pin

	toggle: =>
		@value = if @value then LOW else HIGH
		board.digitalWrite @pin, @value

	blink: (interval) =>
		setInterval @toggle, interval