type Playership 
	Field x:float, y:float;
	const speedX:float=5;
	field  number:int;
	Method New(x:float,y:float)
		self.x=x;
		self.y=y;
		number=Rand( 0, 23 );
	EndMethod
	Method Update()
		if KeyDown( KEY_A ) and (x>=30)
			x=x-speedX;
		EndIf
		if KeyDown( KEY_D ) and (X<=1250)
			x=x+speedX;
		EndIf
	EndMethod
	Method Draw()
		DrawImage( playerImage, x, y, number )
		
	EndMethod
	
endType