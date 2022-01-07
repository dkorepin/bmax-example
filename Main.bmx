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

Graphics(1280 , 720, 0, 60, 0 );

While Not KeyDown ( KEY_ESCAPE )
	Flip( 1 )
	Cls()
Wend