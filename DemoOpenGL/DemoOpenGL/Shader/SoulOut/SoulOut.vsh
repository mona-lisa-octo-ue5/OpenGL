#!/bin/sh

#  SoulOut.vsh
#  DemoOpenGL
#
#  Created by 石玉龙 on 2021/9/1.
#  


attribute vec4 Position;
attribute vec2 TextureCoords;
varying vec2 TextureCoordsVarying;

void main (void) {
    gl_Position = Position;
    TextureCoordsVarying = TextureCoords;
}
