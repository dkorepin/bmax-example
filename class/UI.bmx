Type UI
	Private
	Const LoseText$ = "You dead";
	Field mainFont: TImageFont, bigFont: TImageFont;
	Field hpImg:TImage, hpBarImg:TImage;
	Field score:int, health:Int = 100;
	Public
	Field isDead: byte = 1;

	Method Init()
		AutoMidHandle( 0 );
		mainFont = LoadImageFont( "./src/font.otf", 19, SMOOTHFONT );
		bigFont = LoadImageFont( "./src/font.otf", 109, SMOOTHFONT );
		
		SetImageFont( mainFont );
		hpImg = LoadImage( "./src/life.png" );
		hpBarImg = LoadImage( "./src/lifeBar.png" );
	EndMethod

	Method Update()
		
		
	EndMethod

	Method Draw()
		Reset();
		SetImageFont( mainFont );
		if (isDead = 0)
			DrawImage( hpImg, 340, 0 );
			DrawText( "Score: "+score, 355,5 );
			DrawImage( hpImg, 640, 0 );
			local barwidth: float = 260.0*health*0.01;
			DrawSubImageRect( hpBarImg, 640, 0, barwidth, 44, 0, 0, barwidth, 44, 0, 0, 0 );
		Else
			SetImageFont( bigFont );
			SetColor( 163, 0, 0 );
			DrawText( LoseText, 640 - TextWidth( LoseText )/2,200 );
			SetImageFont( mainFont );
			local ScoreText$ = "You Score: "+score;
			DrawText( ScoreText, 640 - TextWidth( ScoreText )/2,400 );
		EndIf
		Reset();
		SetImageFont( mainFont );
	EndMethod

	Method Dead()
		isDead = 1;
	EndMethod

	Method AddScore(sc: int)
		score: +sc;
	EndMethod

	Method SetScore()
		score = 0;
	EndMethod
EndType