require "Framework/MVC/MVC"
require "Application/Args/SceneArg"
ModelsList={
	 "GameModel"		
};



EventList=
{
    E_StartUp="E_StartUp",
    E_StartLevel="E_StartLevel"
};



ManagerName=LuaFramework.ManagerName;
Util=LuaFramework.Util;
AppFacade=AppFacade;
LuaHelper = LuaFramework.LuaHelper;
GameObject=UnityEngine.GameObject;


ResourceManager=LuaHelper.GetResManager();

GameManager={}
GameManager.Instance=LuaHelper.GetGameManager();
function GameManager:LoadScene(index,callBack)
    sceneArg=SceneArg:new();
    sceneArg.index=index;
    MVC.SendEvent(EventList.E_StartLevel,sceneArg);
    GameManager.Instance:LoadScene(index,callBack)
end



