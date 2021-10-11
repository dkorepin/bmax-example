Type Bullet extends DrawObject
	private const SPEED# = 30;
	private const w# = 20;
	private const h# = 3;

	private global bullets: Tlist = new TList();

	Function getCount%()
		return bullets.Count();		
	EndFunction

	Function UpdateAll()
		For Local bull: Bullet = EachIn bullets
			bull.Update();
			if (OutOfScreen(bull.x, bull.y))
				bullets.Remove(bull);
			EndIf
		Next
	EndFunction

	Function DrawAll()
		For Local bull: Bullet = EachIn bullets
			bull.Draw();
		Next
	EndFunction

	Function Shoot(tan: Tank)
		local b: Bullet = new Bullet(tan.x, tan.y, 90);
		b.s_tank = tan;
		bullets.AddLast(b);
	EndFunction

	Function GetWidth%(angle#)
		if (angle = 0 Or angle = 180) return w;
		return h;
	EndFunction

	Function GetHeight%(angle#)
		if (angle = 0 Or angle = 180) return h;
		return w;
	EndFunction
	
	field angle: FLoat;
	field s_tank: Tank;
	field local_width% = 0;
	field local_height% = 0;
	field speedx#, speedy#;
	
	Method New(x#, y#, angle#)
		self.x = x;
		self.y = y;
		self.angle = angle;
		self.local_width = Bullet.GetWidth(angle);
		self.local_height = Bullet.GetHeight(angle);
		self.speedx = cos(angle)*SPEED;
		self.speedy = sin(angle)*SPEED;
	EndMethod

	Method Update()
		self.x:+speedx;
		self.y:+speedy;
	EndMethod

	Method Draw()
		SetColor( 255, 255, 255 );
		SetTransform( 0, 1, 1 );
		DrawRect( x, y, local_width, local_height );
	EndMethod
EndType