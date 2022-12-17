using Toybox.WatchUi;
using Toybox.Application;
using Toybox.Graphics;
using Toybox.System;

class BatteryIndicator extends WatchUi.Drawable {

	function initialize() {
		Drawable.initialize({ :identifier => "BatteryIndicator" });
	}

	function draw(dc) {
        var dw = dc.getWidth();
		var dh = dc.getHeight();

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);

        var stats = System.getSystemStats();
        var pwr = stats.battery;

        if (pwr < 10) {
            dc.drawBitmap(dw/2.2, dh/6, WatchUi.loadResource(Rez.Drawables.LowBatteryIcon));
        }
	}
}