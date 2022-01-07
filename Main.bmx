SuperStrict

Include "class/Playership.bmx"
Include "class/Enemyship.bmx"
Include "class/Explosion.bmx"
Include "class/Bullet.bmx"
Include "class/UI.bmx"
Include "class/Background.bmx"

Global playerImage:TImage;
Global enemyImage:TImage;
Global uiImage:TImage;
Global bulletImage:TImage;
Global explosionImage:TImage;
Global backgroundImage:TImage;

Global playerInst:Playership= New Playership();
Global uiInst:UI= New UI();
Global backgroundInst:Background = New Background();
Global bulletlist:TList = New TList();
Global enemylist:TList = New TList();
Global explosionsList:TList = New TList();

Graphics(1280 , 720, 0, 60, 0 );

While Not KeyDown ( KEY_ESCAPE )
	backgroundInst.Update();
	playerInst.Update();
	For Local enemy:Enemyship = EachIn enemylist
		enemy.Update();
	Next
	For Local bull:Bullet = EachIn bulletlist
		bull.Update();
	Next
	For Local expl:Explosion = EachIn explosionsList
		expl.Update();
	Next
	uiInst.Update();
	Flip( 1 )
	Cls()
Wend