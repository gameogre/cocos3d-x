#ifdef OPENGL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#endif

uniform sampler2D u_diffuseTexture;
varying vec2 v_texCoord;

void main()
{
#ifdef ALPHAREF
    vec4 basecolor = texture2D(u_diffuseTexture, v_texCoord);
    if (basecolor.a < float(ALPHAREF) / 255.0)
        discard;
#endif

    gl_FragColor = vec4(1.0, 0.0, 1.0, 1.0);
}
