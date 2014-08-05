board = include "board/board"
module.exports = #-----------

class Led
	constructor: (@pin) ->
		@value = 0
		board.pinMode @pin, 1

	toggle: =>
		@value = if @value then 0 else 1
		board.digitalWrite @pin, @value

	blink: (interval) =>
		setInterval @toggle, interval