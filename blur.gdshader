shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture;
uniform float blur_amount = 2.0;

void fragment() {
    vec2 uv = SCREEN_UV;

    vec4 col = vec4(0.0);

    col += texture(screen_texture, uv + vec2(-blur_amount, 0.0) * 0.001);
    col += texture(screen_texture, uv + vec2( blur_amount, 0.0) * 0.001);
    col += texture(screen_texture, uv + vec2(0.0, -blur_amount) * 0.001);
    col += texture(screen_texture, uv + vec2(0.0,  blur_amount) * 0.001);

    col *= 0.25;

    COLOR = col;
}