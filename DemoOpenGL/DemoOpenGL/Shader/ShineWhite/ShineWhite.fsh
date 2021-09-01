#!/bin/sh

#  ShineWhite.fsh
#  DemoOpenGL
#
#  Created by 石玉龙 on 2021/9/1.
#  


precision highp float;

uniform sampler2D Texture;
varying vec2 TextureCoordsVarying;

uniform float Time;

const float Time;

const float PI = 3.1415926;

void main (void) {
    float duration = 0.6;
    float time = mod(Time, duration);
    vec4 whiteMask = vec4(1.0, 1.0, 1.0, 1.0);
    float amplitude = abs(sin(time * (PI / duration)));
    vec4 mask = texture2D(Texture, TextureCoordsVarying);
    gl_FragColor = mask * (1.0 - amplitude) + whiteMask * amplitude;
}
