
require "Application/Common/define"
require "Framework/MVC/Controller"
require "Application/Controller/StartLevelCommand"

StartUpCommand=Controller:new()
function StartUpCommand:new (o)
  o = o or Controller:new(o)
  setmetatable(o, self)
  self.__index = self
  return o
end

function StartUpCommand.Execute(data)
	-- body
  startLevelCommand=StartLevelCommand:new()
  StartUpCommand.RegisterController(EventList.E_StartLevel,startLevelCommand);

  uiStart=UIStart:new()
	--Util.Log("StartLevelcommand"..data.index);
 -- GameManager:LoadScene(1,OnLevelWasLoaded);
--	GameManager:LoadScene(2,OnLevelWasLoaded);

  
end