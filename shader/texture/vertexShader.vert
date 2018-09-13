#version 330

// Uniform variables
uniform mat4 perspectiveMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

// Attributes
in vec4 vertexCoordinates; // Vertex coordinates in model space
in vec4 vertexNormal; // Vertex normal vector in model space
in vec2 textureCoordinates;

// Interpolated output variables
out vec4 lightVector;
out vec4 normalVector;
out vec4 viewerVector;
out vec2 textureCoordinate;

void main(void) {
    vec4 lightPosition = vec4(0, 10, 6, 1); // Light position in world space

   	gl_Position = perspectiveMatrix * viewMatrix * modelMatrix * vertexCoordinates;
    lightVector = normalize(viewMatrix * lightPosition - viewMatrix * modelMatrix * vertexCoordinates);
    normalVector = normalize(viewMatrix * modelMatrix * vertexNormal);
	viewerVector = normalize(vec4(0, 0, 0, 1) - viewMatrix * modelMatrix * vertexCoordinates);
	textureCoordinate = textureCoordinates;
}
