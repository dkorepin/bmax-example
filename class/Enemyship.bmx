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
			PlaySound( shootAudio )
		EndIf
		For Local bull:Bullet = EachIn bulletlist

			if bull.isPlayer =1 and collision(bull.x,bull.y) = 1 
				bulletlist.remove(bull)
				health = health - 45;
				
			EndIF
		Next
	EndMethod
	Method Collision:byte(bullX:float,bullY:float)
		local Dist:float;
		Dist=sqr((bullX-x)^2+(bullY-y)^2);
		If Dist<=25
			Return 1;
		else 
			Return 0;
		EndIF
		
	EndMethod
	Method Draw()
		SetRotation( 180 );
		DrawImage( playerImage, x, y, number )
		SetRotation( 0 );
	EndMethod
EndType