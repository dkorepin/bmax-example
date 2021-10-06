Type Tank extends DrawObject
Const SPEED:Float = 5;
	Field x:Float;
	Field y:Float;

	Method New(x:Float,y:Float)
		self.x = x;
		self.y = y;
		
	EndMethod

	Method Update()
		If KeyDown( KEY_W )
			y:- SPEED;
		EndIf
		If KeyDown( KEY_S )
			y:+ SPEED;
		EndIf
		If KeyDown( KEY_A )
			x:- SPEED;
		EndIf
		If KeyDown( KEY_D )
			x:+ SPEED;
		EndIf
		
	EndMethod
EndType