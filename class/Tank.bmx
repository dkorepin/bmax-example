Type Tank extends DrawObject
Const SPEED:Float = 5;
Global rotation:int = 0

	Field x:Float;
	Field y:Float;
	Field Img:TImage;
	

	Method New(x:Float,y:Float)
		self.x = x;
		self.y = y;
		Img = LoadImage( "src/tank.png")
		rotation:int = 0
		
		
	EndMethod

	Method Update()

			If KeyDown( KEY_W ) 'and y>=0
				
				' y:- SPEED;
			EndIf
			If KeyDown( KEY_S ) 'and y<=720
				
				' y:+ SPEED;
			EndIf
			If KeyDown( KEY_A ) 'and x>=0
				
				' x:- SPEED;
			EndIf
			If KeyDown( KEY_D ) 'and x<=1280
				
				' x:+ SPEED;
			EndIf
	EndMethod
	Method Draw()
		SetColor( 255, 0, 234 );
		SetRotation( 180)
		DrawImage(Img,x,y);


		

		
	EndMethod
	
	
EndType