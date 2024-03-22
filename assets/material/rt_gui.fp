varying mediump vec2 var_texcoord0;
uniform lowp sampler2D suzanne;

void main()
{
    vec4 color = texture2D(suzanne, var_texcoord0.xy);
    gl_FragColor = vec4(color.rgb, color.a);
}