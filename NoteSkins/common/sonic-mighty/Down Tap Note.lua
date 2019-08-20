math.randomseed(math.random(0,65535))
local t = Def.ActorFrame {
	Def.Sprite {
		Texture="characteranimated";
		Frame0000=0;
		Delay0000=math.random(3,15);
		Frame0001=1;
		Delay0001=0.1;
		Frame0002=2;
		Delay0002=math.random(1,5);
		Frame0003=1;
		Delay0003=0.1;
		Frame0004=3;
		Delay0004=0.1;
		Frame0005=4;
		Delay0005=math.random(1,5);
		Frame0006=3;
		Delay0006=0.1;
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
		InitCommand=cmd(x,-24;y,24;rotationz,0);
	};
};
return t;
