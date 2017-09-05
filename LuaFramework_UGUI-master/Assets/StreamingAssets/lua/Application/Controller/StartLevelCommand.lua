
require "Application/Common/define"
require "Application/View/UIStart"
require "Framework/MVC/Controller"

StartLevelCommand=Controller:new()
function StartLevelCommand:new (o)
  o = o or Controller:new(o)
  setmetatable(o, self)
  self.__index = self
  return o
end

function StartLevelCommand.Execute(data)
	-- body
    uiStart=UIStart:new()
	Util.Log("StartLevelcommand"..data.index);
  
end