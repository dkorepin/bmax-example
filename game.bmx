Include "class/Tank.bmx"
Include "class/Bum.bmx"
Include "class/Abstract.bmx"
Include "class/Bullet.bmx"

Graphics(1280 , 720, 0, 60, 0 );

Global Player:Tank;
' Player = New Tank(640,360);
Player = New Tank(100,100);


While Not KeyDown ( KEY_ESCAPE )
	Player.Draw()
	Player.Update()
	


	Flip( 1 )
	Cls()
	
Wend