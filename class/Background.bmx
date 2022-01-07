Type Background
	Field y:float=0;
	const speedY:float= 1;

	Method Update()
		y=y+speedY;
		
	EndMethod
	Method Draw()
		TileImage( backgroundImage, 0,y, 0 )
		
	EndMethod
EndType