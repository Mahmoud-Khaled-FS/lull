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

@[typedef]
struct C.AudioStream {
	buffer    voidptr
	// Pointer to internal data used by the audio system
	processor voidptr
	// Pointer to internal data processor, useful for audio effects
	sampleRate u32
	// Frequency (samples per second)
	sampleSize u32
	// Bit depth (bits per sample): 8, 16, 32 (24 not supported)
	channels   u32
	// Number of channels (1-mono, 2-stereo, ...)
}

pub type AudioStream = C.AudioStream

@[typedef]
struct C.Music {
	stream     AudioStream
	// Audio stream
	frameCount u32
	// Total number of frames (considering channels)
	looping    bool
	// Music looping enable
	ctxType    int
	// Type of music context (audio filetype)
	ctxData    voidptr
	// Audio context data, depends on type
}

pub type Music = C.Music
