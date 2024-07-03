module raylibv

@[typedef]
struct C.Color {
pub mut:
	r u8
	g u8
	b u8
	a u8
}

pub type Color = C.Color

@[typedef]
struct C.Image {
pub mut:
	data voidptr
	// Image raw data
	width int
	// Image base width
	height int
	// Image base height
	mipmaps int
	// Mipmap levels, 1 by default
	format int
	// Data format (PixelFormat type)
}

pub type Image = C.Image

@[typedef]
struct C.Texture {
pub mut:
	id u32
	// OpenGL texture id
	width int
	// Texture base width
	height int
	// Texture base height
	mipmaps int
	// Mipmap levels, 1 by default
	format int
	// Data format (PixelFormat type)
}

pub type Texture2D = C.Texture

@[typedef]
struct C.Vector2 {
pub mut:
	x f64
	y f64
}

pub type Vector2 = C.Vector2

@[typedef]
struct C.Vector3 {
pub mut:
	x f64
	y f64
	z f64
}

pub type Vector3 = C.Vector3
