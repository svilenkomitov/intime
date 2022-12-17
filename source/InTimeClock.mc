using Toybox.WatchUi;
using Toybox.Application;
using Toybox.Graphics;

class InTimeClock extends WatchUi.Drawable {

	function initialize() {
		Drawable.initialize({ :identifier => "InTimeClock" });
	}

	function draw(dc) {
        var dw = dc.getWidth();
		var dh = dc.getHeight();

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);

        dc.drawText(
			dw/2,
			dh/2.6,
			Graphics.FONT_SYSTEM_NUMBER_MEDIUM,
			getTime(),
			Graphics.TEXT_JUSTIFY_CENTER
		);
	}

    function getTime() {
        var clockTime = System.getClockTime();
        var hoursTillEnd = 24 - clockTime.hour - 1;
        var minutesTillEnd = 60 - clockTime.min - 1;
        var secondsTillEnd = 60 - clockTime.sec - 1;

        return Lang.format("$1$:$2$:$3$", [hoursTillEnd.format("%02d"), minutesTillEnd.format("%02d"), secondsTillEnd.format("%02d")]);
    }
}