--[[

Custom Trickframe Support for Acrobatics, by Angular

TO THE RACER CREATOR-

PREREQUISITES: You'll need to make sure you've specified "T" frames in your character WAD. 
***Kartmaker does NOT support this natively - there is a custom template out there that includes that, to my knowledge.

STEPS:
1) Put this in your character WAD/PK3. 
2) Change the "daskin" variable to the name of your character (NOT Real Name! It's the one that's supposed to be one word or have underscores in it.)
	-Yes, leave the quotation marks.
3) That's about it. Acrobatics will handle the rest.

Multiple trickframe support unsupported, but maybe soon? Though that's up to people if they want to make even MORE frames for their racer? :V

]]--

local daskin = "myepicracer" --if there are spaces here i will alt+f4 you

--------------------------------------------------------
-- THAT'S IT; DON'T CHANGE ANYTHING UNDER THIS COMMENT.
-- you're doin' great
--------------------------------------------------------
local function trickyFrames(mo)
	if not acrobatics then return end --turn on the mod, dummy
	if mo.player and mo.valid
		if mo.player and mo.skin == daskin
			mo.player.trickframes = true
		else
			mo.player.trickframes = nil
		end
	end
end
addHook("MobjThinker", trickyFrames, MT_PLAYER)