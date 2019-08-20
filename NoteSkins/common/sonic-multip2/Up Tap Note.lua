local t = Def.ActorFrame {
	Def.Sprite {
		Texture="character";
		Frame0000=0;
		Delay0000=1;
		InitCommand=cmd(zoom,0.5;x,16)
	};
	Def.Sprite {
		Texture="../sonic-core/ice";
		Frame0000=0;
		Delay0000=1;
		InitCommand=cmd(x,16;zoomx,0.5);
	};
	Def.Sprite {
		Texture="../sonic-core/arrow";
		Frame0000=0;
		Delay0000=1;
		InitCommand=cmd(x,-24;y,24;rotationz,180);
	};
};
return t;
