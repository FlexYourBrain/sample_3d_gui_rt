#version 140

uniform sampler2D texture_sampler;
uniform fs_uniforms
{
    vec4 tint;
};

in vec2 var_texcoord0;
out vec4 color_out;

void main()
{
    // Pre-multiply alpha since all runtime textures already are
    lowp vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
    color_out = texture(texture_sampler, var_texcoord0.xy) * tint_pm;
}