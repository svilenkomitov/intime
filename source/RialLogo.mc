using Toybox.WatchUi;
using Toybox.Application;
using Toybox.Graphics;
using Toybox.System;

class RialLogo extends WatchUi.Drawable {

	function initialize() {
		Drawable.initialize({ :identifier => "RialLogo" });
	}

	function draw(dc) {
        var dw = dc.getWidth();
		var dh = dc.getHeight();

        dc.setColor(Graphics.COLOR_LT_GRAY, Graphics.COLOR_TRANSPARENT);

        dc.drawBitmap(dw/2.2, dh/4, WatchUi.loadResource(Rez.Drawables.RialLogo));
	}
}