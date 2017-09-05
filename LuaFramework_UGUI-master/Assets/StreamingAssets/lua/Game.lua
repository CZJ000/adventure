require "Application/Common/define"
require "Framework/MVC/MVC"
require "Application/Controller/StartUpCommand"
--主入口函数。从这里开始lua逻辑
function Start()					
	
	startUpCommand=StartUpCommand:new()
	Util.Log(EventList.E_StartUp)
    MVC.RegisterController(EventList.E_StartUp, startUpCommand)
    MVC.SendEvent(EventList.E_StartUp);
end


--场景切换通知
function OnLevelWasLoaded(level)
	--collectgarbage("collect")
	--Time.timeSinceLevelLoad = 0
	Util.Log("finish    "..level);
end