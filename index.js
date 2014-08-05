var five = require("johnny-five"),
	board = new five.Board(),
	led,
	toggleState = false;

board.on("ready", function() {
	console.log("Board ready");
	led = new five.Led(12);

	setInterval(toggleLED, 2000);

	function toggleLED() {
		toggleState = !toggleState;

		if (toggleState) led.on();
		else led.off();
	}
});

console.log("\nWaiting for device to connect...\n");