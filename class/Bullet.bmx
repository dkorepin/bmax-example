Type Bullet extends DrawObject
	const SPEED = 30;
	field angle: FLoat;
	
	Method New(x#, y#, angle#)
		self.x = x;
		self.y = y;
		self.angle = angle;
	EndMethod

	Method Update()
		self.x:+cos(angle)*SPEED;
		self.y:+sin(angle)*SPEED;
	EndMethod

	Method Draw()
		SetColor( 255, 255, 255 );
		SetTransform( 0, 1, 1 );
		DrawRect( x, y, 5, 5 );
	EndMethod
EndType