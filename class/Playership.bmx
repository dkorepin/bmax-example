type Playership 
	Field x:float, y:float, speedX:float;
	Method New(x:float,y:float)
		self.x=x;
		self.y=y;
	EndMethod
	Method Update()
		
		
	EndMethod
	Method Draw()
		DrawImage( playerImage, x, y, 4 )
		
	EndMethod
endType