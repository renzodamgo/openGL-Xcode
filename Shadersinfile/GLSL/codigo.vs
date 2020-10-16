#version 330 core
layout (location = 0) in vec3 pPosicion;
layout (location = 1) in vec3 pColor;
out vec4 color_vertice;
uniform mat4 proyeccion;
uniform mat4 vista;
uniform mat4 transformacion;
uniform mat4 modelo;
void main(){
	gl_Position = proyeccion * vista * modelo * vec4(pPosicion, 1.0);
	color_vertice = vec4(pColor, 1.0);
}
