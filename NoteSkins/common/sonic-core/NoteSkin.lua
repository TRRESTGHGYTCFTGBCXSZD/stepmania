local ret = ... or {}

ret.RedirTable =
{
	Up = "Up",
	Down = "Down",
	Left = "Left",
	Right = "Right",
};

local OldRedir = ret.Redir;

ret.Redir = function(sButton, sElement)
	sButton, sElement = OldRedir(sButton, sElement);

	--Point the head files back to the tap note
	if string.find(sElement, "Head") or sElement == "Tap Fake" then
		sElement = "Tap Note";
	end
	if sElement == "Hold Body Active" or sElement == "Hold Body Inactive" then
		sElement = "Hold Body";
	end
	if sElement == "Hold Bottomcap Active" or sElement == "Hold Bottomcap Inactive" then
		sElement = "Hold Bottomcap";
	end
	if sElement == "Hold Topcap Active" or sElement == "Hold Topcap Inactive" then
		sElement = "Hold Topcap";
	end
	if sElement == "Roll Body Active" or sElement == "Roll Body Inactive" then
		sElement = "Roll Body";
	end
	if sElement == "Roll Bottomcap Active" or sElement == "Roll Bottomcap Inactive" then
		sElement = "Roll Bottomcap";
	end
	if sElement == "Roll Topcap Active" or sElement == "Roll Topcap Inactive" then
		sElement = "Roll Topcap";
	end

	sButton = ret.RedirTable[sButton];

	return sButton, sElement;
end

ret.Rotate =
{
};

ret.PartsToRotate =
{
};

ret.Blank =
{
-- To blank tap notes:
-- ["tap note"] = true,
};

local function func()
	local sButton = Var "Button";
	local sElement = Var "Element";

	if ret.Blank[sElement] then
		-- Return a blank element.  If SpriteOnly is set,
		-- we need to return a sprite; otherwise just return
		-- a dummy actor.
		local t;
		if Var "SpriteOnly" then
			t = LoadActor( "_blank" );
		else
			t = Def.Actor {};
		end
		return t .. {
			cmd(visible,false);
		};
	end

	local sButtonToLoad, sElementToLoad = ret.Redir(sButton, sElement);
	assert( sButtonToLoad );
	assert( sElementToLoad );

	local sPath = NOTESKIN:GetPath( sButtonToLoad, sElementToLoad );

	local t = LoadActor( sPath );

	if ret.PartsToRotate[sElement] then
		t.BaseRotationZ = ret.Rotate[sButton];
	end

	return t;
end

-- This is the only required function.
ret.Load = func;

-- Use this to override the game types' default Load() functions.
ret.CommonLoad = func;

return ret;
