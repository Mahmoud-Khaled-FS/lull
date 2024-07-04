module main

import raylibv
import ui

const factor = 80
const screen_width = 80 * 16
const screen_height = 80 * 9

fn main() {
	raylibv.set_config_flags(raylibv.flag_window_always_run | raylibv.flag_window_resizable)
	raylibv.init_window(screen_width, screen_height, 'Lull'.str)
	raylibv.init_audio_device()
	music := raylibv.load_music_stream('m.i.mp3'.str)
	raylibv.play_music_stream(music)
	// screen_width, screen_height := ui.fullscreen()
	background := ui.get_background('remo.i.png')
	for !raylibv.window_should_close() {
		raylibv.update_music_stream(music)
		raylibv.begin_drawing()
		raylibv.clear_background(raylibv.black)
		raylibv.draw_texture(background.texture, background.x, background.y, raylibv.white)
		raylibv.draw_text('Remo'.str, 100, 100, 40, raylibv.red)
		raylibv.end_drawing()
	}
}
