SuperStrict

Include "class/Playership.bmx"
Include "class/Enemyship.bmx"
Include "class/Explosion.bmx"
Include "class/Bullet.bmx"
Include "class/UI.bmx"
Include "class/Utils.bmx"
Include "class/Background.bmx"

Global playerImage:TImage;
Global uiImage:TImage;
Global bulletImage:TImage;
Global explosionImage:TImage;
Global backgroundImage:TImage;

Global playerInst:Playership= New Playership(640,690);
Global uiInst:UI= New UI();
Global backgroundInst:Background = New Background();
Global bulletlist:TList = New TList();
Global enemylist:TList = New TList();
Global explosionsList:TList = New TList();

Global shootAudio: TSound, explosionAudio: TSound, musicAudio: TSound;

Graphics(1280 , 720, 0, 60, 0 );
InitGame();
StartGame();

Repeat
	UpdateGame();
	RenderGame();
	Flip( 1 )
	Cls()
Until KeyDown ( KEY_ESCAPE ) Or  AppTerminate()
Function StartGame()
	local EnemyshipInst:Enemyship = New Enemyship(400,400,3,50);
	enemylist.addLast(EnemyshipInst)

	
EndFunction

Function RenderGame()
	backgroundInst.Draw();
	playerInst.Draw();
	For Local enemy:Enemyship = EachIn enemylist
		enemy.Draw();
	Next
	For Local bull:Bullet = EachIn bulletlist
		bull.Draw();
	Next
	For Local expl:Explosion = EachIn explosionsList
		expl.Draw();
	Next
	uiInst.Draw();
EndFunction

Function UpdateGame()
	backgroundInst.Update();
	If uiInst.isDead=0
	playerInst.Update();
	EndIf
	For Local enemy:Enemyship = EachIn enemylist
		enemy.Update();
		if enemy.health <=0
			enemylist.remove(enemy);
			uiInst.Addscore(10);
		EndIf
	Next
	For Local bull:Bullet = EachIn bulletlist
		bull.Update();
		if bull.y < 0 
			bulletlist.remove(bull)
		EndIf
	Next
	For Local expl:Explosion = EachIn explosionsList
		expl.Update();
	Next
	uiInst.Update();
EndFunction

Function InitGame()
	AutoMidHandle( 1 );
	SeedRnd( millisecs() );
	backgroundImage = LoadImage( "./src/bckg.png" );
	playerImage = LoadAnimImage( "./src/ships.png",60,66,0,24)
	bulletImage =LoadImage("./src/bullet.png" );

	shootAudio = LoadSound("./src/snd/shoot.ogg");
	explosionAudio = LoadSound("./src/snd/explo.ogg");
	musicAudio = LoadSound("./src/snd/music.ogg", SOUND_LOOP);
	
	' PlaySound( musicAudio );
	uiInst.Init();
EndFunction