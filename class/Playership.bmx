type Playership 
	Field x:float, y:float;
	const speedX:float=5;
	field  number:int;
	Method New(x:float,y:float)
		self.x=x;
		self.y=y;
		number=Rand( 0, 23 );
	EndMethod
	Method Update()
		if KeyDown( KEY_A ) and (x>=30)
			x=x-speedX;
		EndIf
		if KeyDown( KEY_D ) and (X<=1250)
			x=x+speedX;
		EndIf
		If KeyHit( KEY_W )
			local bull:Bullet = New Bullet(x,y,1);
			bulletlist.addLast(bull);
			PlaySound( shootAudio )
		EndIf
		For Local bull:Bullet = EachIn bulletlist
			if bull.isPlayer = 0  and collision(bull.x,bull.y) = 1
				bulletlist.remove(bull)
				uiInst.health =uiInst.health - 45;	
				if uiInst.health <=0
					uiInst.isDead = 1;
					Local expl:Explosion = New Explosion(x,y)
						explosionsList.addlast(expl)
						
						PlaySound( explosionAudio)
				EndIf
			EndIf
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
		DrawImage( playerImage, x, y, number )
		
	EndMethod
	
endType