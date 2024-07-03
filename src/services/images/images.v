module images

import os
import ffmpeg

// TODO: change the default path
pub const background_path = 'bg.png'

pub fn load_background(file_path string) string {
	if !os.exists(file_path) {
		panic('Image not exsist') // TODO: add error handling
	}
	if os.file_ext(file_path) == '.png' {
		os.cp(file_path, images.background_path) or { panic('can not copy image') }
	} else {
		ffmpeg.image_to_png(file_path, images.background_path)
	}
	return images.background_path
}
