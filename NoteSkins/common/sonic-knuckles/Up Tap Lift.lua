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
		InitCommand=cmd(diffuse,color("#00FF00"));
	};
	Def.Sprite {
		Texture="../sonic-core/arrow";
		Frame0000=0;
		Delay0000=1;
		InitCommand=cmd(x,-24;y,24;rotationz,180);
	};
};
return t;
