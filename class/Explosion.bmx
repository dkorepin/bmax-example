Type Explosion
	Field x:float, y:float, frame:int=0;
	Method new(x:float,y:float)
		self.x=x;
		self.y=y;
		
	EndMethod
	Method Update()
		
		if frame < 15
			frame = frame +1;
		EndIf

	EndMethod
	Method Draw()
		DrawImage( explosionImage, x, y,frame);
		SetRotation( 0 );	
	EndMethod
EndType