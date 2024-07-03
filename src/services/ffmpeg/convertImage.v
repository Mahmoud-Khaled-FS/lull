module ffmpeg

import os

// TODO: add ffmpeg to app
pub fn image_to_png(src string, dst string) {
	result := os.execute('ffmpeg -i ${src} ${dst}')
	if result.exit_code != 0 {
		panic('ffmpeg error when convert to png') // TODO: add error handling
	}
}
