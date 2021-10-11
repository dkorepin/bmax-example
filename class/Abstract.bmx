Type DrawObject
	Field x:Float;
	Field y:Float;

	Method Draw(x: Float, y: Float)
		SetColor( 255, 255, 255 );
		SetTransform( 0, 1, 1 );
		DrawRect( x, y, 100, 100 );
	EndMethod
EndType

Function DrawGameInfo()
	SetColor( 255, 255, 255 );
	SetTransform( 0, 1, 1 );
	DrawText( "Bullets: "+Bullet.getCount(), 400, 5 );
	
EndFunction

Function OutOfScreen%(x#, y#)
	if (x < 0 or y < 0) return 1;
	if (x > GraphicsWidth() or y > GraphicsHeight()) return 1;
	return 0;
EndFunction