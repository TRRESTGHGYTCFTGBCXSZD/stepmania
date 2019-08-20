local t = Def.ActorFrame {
	Def.Sprite {
		Texture="ice";
		Frame0000=0;
		Delay0000=1;
		InitCommand=cmd(effectclock,"beat";diffuseramp;effectcolor1,color(".5,.5,.5,1");effectcolor2,color("1,1,1,1");effecttiming,.2,0,.8,0;effectoffset,.05);
	};
};
return t;
