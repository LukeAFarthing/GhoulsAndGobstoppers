//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float alpha;

void main()
{
	vec4 day_night = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	day_night.a = alpha;
	
    gl_FragColor = day_night;
}
