module raylibv

pub const lightgray = Color{200, 200, 200, 255}
pub const gray = Color{130, 130, 130, 255}
pub const darkgray = Color{80, 80, 80, 255}
pub const yellow = Color{253, 249, 0, 255}
pub const gold = Color{255, 203, 0, 255}
pub const orange = Color{255, 161, 0, 255}
pub const pink = Color{255, 109, 194, 255}
pub const red = Color{230, 41, 55, 255}
pub const maroon = Color{190, 33, 55, 255}
pub const green = Color{0, 228, 48, 255}
pub const lime = Color{0, 158, 47, 255}
pub const darkgreen = Color{0, 117, 44, 255}
pub const skyblue = Color{102, 191, 255, 255}
pub const blue = Color{0, 121, 241, 255}
pub const darkblue = Color{0, 82, 172, 255}
pub const purple = Color{200, 122, 255, 255}
pub const violet = Color{135, 60, 190, 255}
pub const darkpurple = Color{112, 31, 126, 255}
pub const beige = Color{211, 176, 131, 255}
pub const brown = Color{127, 106, 79, 255}
pub const darkbrown = Color{76, 63, 47, 255}
pub const white = Color{255, 255, 255, 255}
pub const black = Color{0, 0, 0, 255}
pub const blank = Color{0, 0, 0, 0}
pub const magenta = Color{255, 0, 255, 255}
pub const raywhite = Color{245, 245, 245, 255}

pub enum PixelFormat {
	uncompressed_grayscale    = 1
	// 8 bit per pixel (no alpha)
	uncompressed_gray_alpha
	// 8*2 bpp (2 channels)
	uncompressed_r5g6b5
	// 16 bpp
	uncompressed_r8g8b8
	// 24 bpp
	uncompressed_r5g5b5a1
	// 16 bpp (1 bit alpha)
	uncompressed_r4g4b4a4
	// 16 bpp (4 bit alpha)
	uncompressed_r8g8b8a8
	// 32 bpp
	uncompressed_r32
	// 32 bpp (1 channel - float)
	uncompressed_r32g32b32
	// 32*3 bpp (3 channels - float)
	uncompressed_r32g32b32a32
	// 32*4 bpp (4 channels - float)
	uncompressed_r16
	// 16 bpp (1 channel - half float)
	uncompressed_r16g16b16
	// 16*3 bpp (3 channels - half float)
	uncompressed_r16g16b16a16
	// 16*4 bpp (4 channels - half float)
	compressed_dxt1_rgb
	// 4 bpp (no alpha)
	compressed_dxt1_rgba
	// 4 bpp (1 bit alpha)
	compressed_dxt3_rgba
	// 8 bpp
	compressed_dxt5_rgba
	// 8 bpp
	compressed_etc1_rgb
	// 4 bpp
	compressed_etc2_rgb
	// 4 bpp
	compressed_etc2_eac_rgba
	// 8 bpp
	compressed_pvrt_rgb
	// 4 bpp
	compressed_pvrt_rgba
	// 4 bpp
	compressed_astc_4x4_rgba
	// 8 bpp
	compressed_astc_8x8_rgba
	// 2 bpp
}
