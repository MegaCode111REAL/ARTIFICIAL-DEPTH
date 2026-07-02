shader_type spatial;
render_mode unshaded, depth_test_disabled, depth_draw_never, cull_disabled;

uniform sampler2D depth_texture : hint_depth_texture, filter_linear_mipmap;
uniform vec4 outline_color : source_color = vec4(1.0, 1.0, 1.0, 1.0);
uniform float depth_threshold : hint_range(0.0001, 0.01) = 0.001;
uniform int pixel_width : hint_range(1, 10) = 3;

void fragment() {
    vec2 texel = 1.0 / vec2(textureSize(depth_texture, 0));
    int w = pixel_width;

    float center_depth = texture(depth_texture, SCREEN_UV).r;
    float max_depth_diff = 0.0;

    for (int x = -w; x <= w; x++) {
        for (int y = -w; y <= w; y++) {
            if (x == 0 && y == 0) continue;

            float dist = sqrt(float(x * x + y * y));
            if (dist > float(w)) continue;

            vec2 offset_uv = SCREEN_UV + vec2(float(x), float(y)) * texel;
            float sample_depth = texture(depth_texture, offset_uv).r;

            max_depth_diff = max(max_depth_diff, abs(center_depth - sample_depth));
        }
    }

    if (max_depth_diff > depth_threshold) {
        ALBEDO = outline_color.rgb;
        ALPHA = 1.0;
    } else {
        ALPHA = 0.0;
    }
}