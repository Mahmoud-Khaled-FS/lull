module ui

import raylibv as rl
import services.images

struct Background {
pub:
	width   int
	height  int
	x       int
	y       int
	texture rl.Texture2D
}

pub fn get_background(image_path string) Background {
	// TODO: Move check for background in service module
	bg_path := images.load_background(image_path)
	width := rl.get_render_width()
	height := rl.get_render_height()
	image := rl.load_image(bg_path.str)

	rl.image_resize(&image, width, height)
	defer { rl.unload_image(image) }
	texture := rl.load_texture_from_image(image)
	bg := Background{
		width: width
		height: height
		x: width / 2 - texture.width / 2
		y: height / 2 - texture.height / 2
		texture: texture
	}
	return bg
}
