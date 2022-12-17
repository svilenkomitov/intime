using Toybox.WatchUi;
using Toybox.Application;
using Toybox.Graphics;

class RealClock extends WatchUi.Drawable {

	function initialize() {
		Drawable.initialize({ :identifier => "RealClock" });
	}

	function draw(dc) {
        var dw = dc.getWidth();
		var dh = dc.getHeight();

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);

        dc.drawText(
			dw/2,
			dh/1.6,
			Graphics.FONT_GLANCE_NUMBER,
			getTime(),
			Graphics.TEXT_JUSTIFY_CENTER
		);
	}

    function getTime() {
        var clockTime = System.getClockTime();
        return Lang.format("$1$:$2$", [clockTime.hour.format("%02d"), clockTime.min.format("%02d")]);
    }
}