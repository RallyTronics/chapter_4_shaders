$input a_position
$output v_position

//
// (C) Copyright 2010 Patrick Cozzi and Deron Ohlarik
//
// Distributed under the MIT License.
// See License.txt or http://www.opensource.org/licenses/mit-license.php.
//

//layout(location = og_positionVertexLocation) in vec4 position;
//out vec3 worldPosition;

//uniform mat4 og_modelViewPerspectiveMatrix;

#include "../common/common.sh"

void main()                     
{
    //gl_Position = og_modelViewPerspectiveMatrix * position; 
	gl_Position = mul(u_modelViewProj, vec4(a_position, 1.0) );
    //worldPosition = position.xyz;
    v_position = a_position;
}
