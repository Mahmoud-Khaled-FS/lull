module main

import raylibv
import ui

const screen_width = 1200
const screen_height = 800

fn main() {
	raylibv.init_window(screen_width, screen_height, 'Lull'.str)
	// screen_width, screen_height := ui.fullscreen()
	background := ui.get_background('remo.png')

	for !raylibv.window_should_close() {
		raylibv.begin_drawing()
		raylibv.clear_background(raylibv.black)
		raylibv.draw_texture(background.texture, background.x, background.y, raylibv.white)
		raylibv.draw_text('Remo'.str, 100, 100, 40, raylibv.red)
		raylibv.end_drawing()
	}
}
