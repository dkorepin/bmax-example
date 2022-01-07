Type Enemyship
	Field health:Int, x:float, y:float;
	Field number:int;
	Method New(x:float,y:float,num:int,health:int)
		self.x=x;
		self.y=y;
		self.health=health;
		number=num;
	EndMethod
	Method Update()
		if rand(0,100 )<5
		local bull:Bullet = New Bullet(x,y,0);
			bulletlist.addLast(bull);
		EndIf
	EndMethod
	Method Draw()
		SetRotation( 180 );
		DrawImage( playerImage, x, y, number )
		SetRotation( 0 );
	EndMethod
EndType