--[[
Use this command in the developer console to reload changes:
dofile("../data/addon_d/helloaddon/helloaddon.lua");

Don't put any code in file scope. Only put code inside a function. The code
outside of functions may not execute as expected due to load order and other
things.
--]]

--ADDONNAME_ON_INIT is automatically called each time the map loads and is
--injected with addon and frame.
function HELLOADDON_ON_INIT(addon, frame)
	--Print the frame name.
	CHAT_SYSTEM(frame:GetName() .. " injected!");

	--Use the addon object to register a function with a message.
	--Local functions can't be used in RegisterMsg, unfortunately.
	addon:RegisterMsg("FPS_UPDATE", "HELLOADDON_UPDATE");

	CHAT_SYSTEM("helloaddon loaded!");
end

--A function to print "Hello, addon!" when the FPS_UPDATE message is received.
function HELLOADDON_UPDATE(frame, msg, argStr, argNum)
	CHAT_SYSTEM("Hello, addon!");
end
