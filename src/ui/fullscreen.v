module ui

import raylibv as rl

pub fn fullscreen() (int, int) {
	monitor := rl.get_current_monitor()
	monitor_width := rl.get_monitor_width(monitor)
	monitor_height := rl.get_monitor_height(monitor)
	rl.set_window_size(monitor_width, monitor_height)
	rl.toggle_fullscreen()
	return monitor_width, monitor_height
}
