SuperStrict
Global playerImage:TImage;
Global enemyImage:TImage;
Global uiImage:TImage;
Global bulletImage:TImage;
Global explosionImage:TImage;
Global backgroundImage:TImage;

Global playerInst:Playership;
Global uiInst:UI;
Global backgroundInst:Background;
Global bulletList:TList;
Global enemylist:TList;
Global explosionsList:TList;

Global shootAudio: TSound, explosionAudio: TSound, musicAudio: TSound;

Graphics(1280 , 720, 0, 60, 0 );
InitGame();

While Not KeyDown ( KEY_ESCAPE )
	Flip( 1 )
	Cls()
Wend

Function InitGame()
	shootAudio = LoadSound("./src/snd/shoot.ogg");
	explosionAudio = LoadSound("./src/snd/explo.ogg");
	musicAudio = LoadSound("./src/snd/music.ogg", SOUND_LOOP);

	PlaySound( musicAudio );
EndFunction