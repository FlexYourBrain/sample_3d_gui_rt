#version 140

uniform sampler2D suzanne;

in vec2 var_texcoord0;
out vec4 color_out;

void main()
{
    vec4 color = texture(suzanne, var_texcoord0.xy);
    color_out = vec4(color.rgb, color.a);
}