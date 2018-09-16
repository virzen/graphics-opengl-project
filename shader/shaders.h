//Created by dopieralad on 2018/09/13.

#ifndef OPENGL_ARCANOID_SHADERS_H
#define OPENGL_ARCANOID_SHADERS_H


#include "shader.h"

class Shaders {

public:
	static Shader* colorShader();

	static Shader* brickShader();

private:
	static Shader* colorShaderInstance;
	static Shader* brickShaderInstance;
};


#endif //OPENGL_ARCANOID_SHADERS_H
