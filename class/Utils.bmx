Function Reset(a# = 1, s# = 1, r# = 0)
	SetColor( 255, 255, 255 );
	SetBlend( ALPHABLEND );
	SetTransform( r, s, s );
	SetAlpha( a );
EndFunction