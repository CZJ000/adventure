require "MVC/Common/define"
require "MVC/MVC/MVC"
require "MVC/Controller/StartUpCommand"
--主入口函数。从这里开始lua逻辑
function Start()					
	Util.Log("start")
	startUpCommand=StartUpCommand:new()
    MVC.RegisterController(ControllerList.StartUpCommand, startUpCommand)
    MVC.SendEvent(ControllerList.StartUpCommand);
     GameManager:LoadScene(1,OnLevelWasLoaded);
	 GameManager:LoadScene(2,OnLevelWasLoaded);
end


--场景切换通知
function OnLevelWasLoaded(level)
	--collectgarbage("collect")
	--Time.timeSinceLevelLoad = 0
	Util.Log("finish    "..level);
end