local t = Def.ActorFrame {
	Def.Sprite {
		Texture="character";
		Frame0000=0;
		Delay0000=1;
	};
	Def.Sprite {
		Texture="../sonic-core/ice";
		Frame0000=0;
		Delay0000=1;
	};
	Def.Sprite {
		Texture="../sonic-core/arrow";
		Frame0000=0;
		Delay0000=1;
		InitCommand=cmd(x,-24;y,24;rotationz,-90);
	};
};
return t;
