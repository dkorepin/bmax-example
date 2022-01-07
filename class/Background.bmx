Type Background
	Field y:float=0;
	const speedY:float= 1;

	Method Update()
		y=y+speedY;
		
	EndMethod
	Method Draw()
		Reset();
		TileImage( backgroundImage, 0, y, 0 );
		SetBlend( LIGHTBLEND );
		TileImage( backgroundImage, 250, y*0.5, 0 );
		Reset();
	EndMethod
EndType