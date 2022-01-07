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

Global shootAudio: TSound, explosionAudio: TSound, musicAudio: TSound;

Graphics(1280 , 720, 0, 60, 0 );
InitGame();

Repeat
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
Until KeyDown ( KEY_ESCAPE ) Or  AppTerminate()

Function InitGame()
	shootAudio = LoadSound("./src/snd/shoot.ogg");
	explosionAudio = LoadSound("./src/snd/explo.ogg");
	musicAudio = LoadSound("./src/snd/music.ogg", SOUND_LOOP);

	PlaySound( musicAudio );
EndFunction