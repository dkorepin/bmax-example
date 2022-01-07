Type Bullet
	Field x:float, y:float, isPlayer:byte;
	Const speedY:float = 10;
	field time:int = 200; 
	Method New(x:float,y:float,isPlayer:byte)
		self.x=x;
		self.y=y;
		self.isPlayer=isPlayer;
	EndMethod
	Method Update()
	if isPlayer=1
		y=y-10;
	Else
		y=y+10;
	EndIf		
	EndMethod
	Method Draw()
		if isPlayer=0
			SetRotation( 180 );
		EndIf
		DrawImage( bulletImage, x, y );
		SetRotation( 0 );
	EndMethod
EndType