Type Bullet
	Field x:float, y:float, isPlayer:byte;
	Const speedY:float = 10;
	field time:int = 200; 
	Method New(x:float,y:float)
		self.x=x;
		self.y=y;
		
	EndMethod
	Method Update()
		y=y-10;
	EndMethod
	Method Draw()
		
			DrawImage( bulletImage, x, y );
	EndMethod
EndType