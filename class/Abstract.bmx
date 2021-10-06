Type DrawObject
	Method Draw(x: Float, y: Float)
		SetColor( 255, 255, 255 );
		SetTransform( 0, 1, 1 );
		DrawRect( x, y, 100, 100 );
	EndMethod
EndType