module raylibv

#preinclude "@VMODROOT/include/pre.h"

#include "@VMODROOT/raylib-5.0_win64_mingw-w64/include/raylib.h"
// #include "@VMODROOT/raylib/src/raylib.h"
// #flag -I @VMODROOT/raylib/src/external/glfw/include
// #flag @VMODROOT/raylib/src/raudio.o
// #flag @VMODROOT/raylib/src/rcore.o
// #flag @VMODROOT/raylib/src/rmodels.o
// #flag @VMODROOT/raylib/src/rshapes.o
// #flag @VMODROOT/raylib/src/rtext.o
// #flag @VMODROOT/raylib/src/rtextures.o
// #flag @VMODROOT/raylib/src/utils.o
// #flag @VMODROOT/raylib/src/rglfw.o
#flag -IC:"@VMODROOT/raylib-5.0_win64_mingw-w64/include"
#flag -LC:"@VMODROOT/raylib-5.0_win64_mingw-w64/lib"
#flag -lraylib
#flag -lopengl32
#flag -lgdi32
#flag -lwinmm

fn C.InitWindow(width int, height int, title &u8)
@[inline]
pub fn init_window(width int, height int, title &u8) {
	C.InitWindow(width, height, title)
}

fn C.BeginDrawing()
@[inline]
pub fn begin_drawing() {
	C.BeginDrawing()
}

fn C.EndDrawing()
@[inline]
pub fn end_drawing() {
	C.EndDrawing()
}

fn C.ClearBackground(color Color)
@[inline]
pub fn clear_background(color Color) {
	C.ClearBackground(color)
}

fn C.WindowShouldClose() bool
@[inline]
pub fn window_should_close() bool {
	return C.WindowShouldClose()
}

// RLAPI void DrawText(const char *text, int posX, int posY, int fontSize, Color color);       // Draw text (using default font)
// RLAPI void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint); // Draw text using font and additional parameters
fn C.DrawText(text &u8, posX int, posY int, font_size int, color Color)
@[inline]
pub fn draw_text(text &u8, posX int, posY int, font_size int, color Color) {
	C.DrawText(text, posX, posY, font_size, color)
}

fn C.MeasureText(text &u8, font_size int) int
@[inline]
pub fn measure_text(text &u8, font_size int) int {
	return C.MeasureText(text, font_size)
}

fn C.ColorFromHSV(hue f32, saturation f32, value f32) Color
@[inline]
pub fn color_from_hsv(hue f32, saturation f32, value f32) Color {
	return C.ColorFromHSV(hue, saturation, value)
}

fn C.GetFrameTime() f64
@[inline]
pub fn get_frame_time() f64 {
	return C.GetFrameTime()
}

fn C.GetTime() f64
@[inline]
pub fn get_time() f64 {
	return C.GetTime()
}

fn C.ToggleFullscreen()
@[inline]
pub fn toggle_fullscreen() {
	C.ToggleFullscreen()
}

fn C.GetCurrentMonitor() int
@[inline]
pub fn get_current_monitor() int {
	return C.GetCurrentMonitor()
}

fn C.SetWindowSize(width int, height int)
@[inline]
pub fn set_window_size(width int, height int) {
	C.SetWindowSize(width, height)
}

fn C.GetMonitorWidth(monitor int) int
@[inline]
pub fn get_monitor_width(monitor int) int {
	return C.GetMonitorWidth(monitor)
}

fn C.GetMonitorHeight(monitor int) int
@[inline]
pub fn get_monitor_height(monitor int) int {
	return C.GetMonitorHeight(monitor)
}

fn C.LoadImage(file_path &u8) Image
@[inline]
pub fn load_image(file_path &u8) Image {
	return C.LoadImage(file_path)
}

fn C.LoadImageRaw(file_name &u8, width int, height int, format int, header_size int) Image
@[inline]
pub fn load_image_raw(file_name &u8, width int, height int, format int, header_size int) Image {
	return C.LoadImageRaw(file_name, width, height, format, header_size)
}

fn C.UnloadImage(image Image)
@[inline]
pub fn unload_image(image Image) {
	C.UnloadImage(image)
}

fn C.ImageResize(image &Image, newWidth int, newHeight int)
@[inline]
pub fn image_resize(image &Image, new_width int, new_height int) {
	C.ImageResize(image, new_height, new_height)
}                                      // Resize image (Bicubic scaling algorithm)

fn C.LoadTextureFromImage(image Image) Texture2D
@[inline]
pub fn load_texture_from_image(image Image) Texture2D {
	return C.LoadTextureFromImage(image)
}

fn C.UnloadTexture(texture Texture2D)
@[inline]
pub fn unload_texture(texture Texture2D) {
	C.UnloadTexture(texture)
}

fn C.DrawTexture(texture Texture2D, posX int, posY int, tint Color)
@[inline]
pub fn draw_texture(texture Texture2D, posX int, posY int, tint Color) {
	C.DrawTexture(texture, posX, posY, tint)
}

fn C.DrawTextureEx(texture Texture2D, position Vector2, rotation f32, scale f32, tint Color)
@[inline]
pub fn draw_texture_ex(texture Texture2D, position Vector2, rotation f32, scale f32, tint Color) {
	C.DrawTextureEx(texture, position, rotation, scale, tint)
}

// Draw a Texture2D with extended parameters
fn C.GetRenderWidth() int
@[inline]
pub fn get_render_width() int {
	return C.GetRenderWidth()
}

fn C.GetRenderHeight() int
@[inline]
pub fn get_render_height() int {
	return C.GetRenderHeight()
}
