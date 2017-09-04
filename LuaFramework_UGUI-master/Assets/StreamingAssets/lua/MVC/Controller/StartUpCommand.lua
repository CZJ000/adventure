
require "/MVC/Common/define"

StartUpCommand=Controller:new()
function StartUpCommand:new (o)
  o = o or Controller:new(o)
  setmetatable(o, self)
  self.__index = self
  return o
end

function StartUpCommand.Execute( data )
	-- body
	LuaFramework.Util.Log("helloworld");
  
   AppFacade.Instance.AddManager<ResourceManager>(ManagerName.Resource);
   AppFacade.Instance.AddManager<ThreadManager>(ManagerName.Thread);
   AppFacade.Instance.AddManager<ObjectPoolManager>(ManagerName.ObjectPool);
  AppFacade.Instance.AddManager<GameManager>(ManagerName.Game);
end