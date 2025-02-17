package objects;

class SongDisplay extends FlxSpriteGroup
{
	public var bg:FlxSprite;
	public var difficultyText:FlxText;
	public var songText:FlxText;

	public function new(x:Float, y:Float)
	{
		super(x, y);

		bg = new FlxSprite().makeGraphic(400, 100, FlxColor.WHITE);
		bg.antialiasing = ClientPrefs.data.antialiasing;
		bg.alpha = 0.7;
		add(bg);

		difficultyText = new FlxText(0, 0, 400, Difficulty.getString(), 30);
		difficultyText.setFormat(Paths.font("vcr.ttf"), 30, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		difficultyText.borderSize = 2;
		add(difficultyText);

		songText = new FlxText(0, 60, 400, PlayState.SONG.song, 30);
		songText.setFormat(Paths.font("vcr.ttf"), 30, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		songText.borderSize = 2;
		add(songText);

		scrollFactor.set();
	}

	override function destroy()
	{
		active = false;
		super.destroy();
	}
}