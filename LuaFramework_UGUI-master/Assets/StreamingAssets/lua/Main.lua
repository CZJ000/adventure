
require "MVC/Common/define"
require "MVC/MVC/MVC"
require "MVC/MVC/Controller"
require "MVC/Controller/StartUpCommand"
--主入口函数。从这里开始lua逻辑
function Main()					
	Util.Log("start")
	startUpCommand=StartUpCommand:new()
    MVC.RegisterController(ControllerList.StartUpCommand, startUpCommand)
    MVC.SendEvent(ControllerList.StartUpCommand);
   
end

--场景切换通知
function OnLevelWasLoaded(level)
	collectgarbage("collect")
	Time.timeSinceLevelLoad = 0
end