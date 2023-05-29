#shader vertex
#version 330 core

layout(location = 0) in vec3 position;

out vec3 v_Position;

uniform mat4 u_MVP;

void main()
{
   gl_Position = u_MVP * vec4(position,1.0);
   v_Position = position;
};

#shader fragment
#version 330 core

layout(location = 0) out vec4 color;
in vec3 v_Position;

uniform vec4 u_Color;

void main()
{
	color = vec4(v_Position, 1.0);
};