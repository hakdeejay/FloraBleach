//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float pixelH;
uniform float pixelW;

void main()
{
	//set yellow
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4(0.0,1.0,1.0,gl_FragColor.a);
	
	vec2 offsetX;
	offsetX.x = pixelW;
	vec2 offsetY;
	offsetY.y = pixelH;
	
	float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	
	alpha =+ ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetX).a);
	alpha =+ ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetX).a);
	alpha =+ ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetY).a);
	alpha =+ ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetY).a);
	
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	//gl_FragColor.a = alpha;
}

