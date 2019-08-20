local t = Def.ActorFrame {
	Def.Sprite{
		Texture= "Character.png",
		do_itCommand=cmd(x,-16;diffusealpha,1;zoom,0.5;accelerate,0.25;zoom,0);
		HoldingOnCommand=cmd(finishtweening;diffusealpha,0);
		RollOnCommand=cmd(finishtweening;diffusealpha,0);
		InitCommand=cmd(diffusealpha,0);
		W3Command=cmd(playcommand,"do_it");
		W2Command=cmd(playcommand,"do_it");
		W1Command=cmd(playcommand,"do_it");
		HeldCommand=cmd(playcommand,"do_it");
		JudgmentCommand=cmd(finishtweening);
	};
	Def.Sprite{
		Texture= "../sonic-core/crackul.png",
		InitCommand=cmd(diffusealpha,0);
		do_itCommand=cmd(diffusealpha,1;x,0;y,0;decelerate,0.2;x,-16;y,-24;accelerate,0.2;x,-32;y,0;diffusealpha,0);
		HoldingOnCommand=cmd(finishtweening;diffusealpha,0);
		RollOnCommand=cmd(finishtweening;diffusealpha,0);
		W3Command=cmd(playcommand,"do_it");
		W2Command=cmd(playcommand,"do_it");
		W1Command=cmd(playcommand,"do_it");
		HeldCommand=cmd(playcommand,"do_it");
		JudgmentCommand=cmd(finishtweening);
	};
	Def.Sprite{
		Texture= "../sonic-core/crackdl.png",
		InitCommand=cmd(diffusealpha,0);
		do_itCommand=cmd(diffusealpha,1;x,0;y,0;decelerate,0.2;x,-16;y,-16;accelerate,0.2;x,-32;y,16;diffusealpha,0);
		HoldingOnCommand=cmd(finishtweening;diffusealpha,0);
		RollOnCommand=cmd(finishtweening;diffusealpha,0);
		W3Command=cmd(playcommand,"do_it");
		W2Command=cmd(playcommand,"do_it");
		W1Command=cmd(playcommand,"do_it");
		HeldCommand=cmd(playcommand,"do_it");
		JudgmentCommand=cmd(finishtweening);
	};
	Def.Sprite{
		Texture= "../sonic-core/robotnik(res 32x32).png",
		InitCommand=cmd(diffusealpha,0;zoom,0.5;x,-16);
		HitMineCommand=cmd(diffusealpha,1;zoom,1;sleep,1;accelerate,1;zoom,0);
	};
	LoadFont("Common Fallback Font") .. {
		InitCommand=cmd(diffusealpha,0;zoom,0.5;x,-16;rotationz,90);
		do_itCommand=cmd(diffusealpha,1;sleep,1;accelerate,1;diffusealpha,0);
		MissCommand=cmd(settext,[[missed
a animal...]];playcommand,"do_it");
		W5Command=cmd(finishtweening;settext,"too far...";playcommand,"do_it");
		W4Command=cmd(finishtweening;settext,"not so close...";playcommand,"do_it");
		HeldCommand=cmd(finishtweening;settext,"Held!";playcommand,"do_it");
		JudgmentCommand=cmd(finishtweening);
	};
}
return t;
