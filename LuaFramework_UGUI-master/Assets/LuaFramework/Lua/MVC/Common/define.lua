ModelsList={
	 "GameModel"		
};

ControllerList=
{
	 StartUpCommand="StartUpCommand"

};



ManagerName=LuaFramework.ManagerName;
Util=LuaFramework.Util;
AppFacade=AppFacade;
LuaHelper = LuaFramework.LuaHelper;

GameManager={}
GameManager.Instance=LuaHelper.GetGameManager();
function GameManager:LoadScene(index,callBack)
    Util.Log("send_event");
    GameManager.Instance:LoadScene(index,callBack)
end



