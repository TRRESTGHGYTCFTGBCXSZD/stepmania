local t = Def.ActorFrame {
	Def.Sprite {
		Texture="../sonic-core/fakecube";
		Frame0000=0;
		Delay0000=1;
		InitCommand=cmd(x,16;zoomx,0.5);
	};
	Def.Sprite {
		Texture="fakecharacter";
		Frame0000=0;
		Delay0000=1;
		InitCommand=cmd(zoom,0.5;x,16)
	};
};
return t;
