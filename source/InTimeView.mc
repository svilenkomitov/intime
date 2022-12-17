import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class InTimeView extends WatchUi.WatchFace {

    function initialize() {
        WatchFace.initialize();
    }

    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.WatchFace(dc));
    }

    function onShow() as Void {
    }

    function onUpdate(dc as Dc) as Void {
        var inTimeClock = View.findDrawableById("InTimeClock");
        inTimeClock.draw(dc);

        var realClock = View.findDrawableById("RealClock");
        realClock.draw(dc);

        var batteryIndicator = View.findDrawableById("BatteryIndicator");
        batteryIndicator.draw(dc);

        View.onUpdate(dc);
    }

    function onHide() as Void {
    }

    function onExitSleep() as Void {
    }

    function onEnterSleep() as Void {
    }
}