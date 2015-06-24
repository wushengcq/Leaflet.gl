
// Tile vertices do not need any special treatment, just pass stuff along

precision mediump float;

attribute vec2 aCRSCoords;

attribute vec2 aTextureCoords;
varying   vec2 vTextureCoords;

attribute float aAge;
varying   float vAge;


void main(void) {
	gl_Position = crs2clipspace( vec4(aCRSCoords.x, aCRSCoords.y, 0.0, 1.0));


	vTextureCoords = aTextureCoords;	// Pass the texture coords to the frag shader
	vAge = aAge;	// Pass the tile age to the frag shader
}

