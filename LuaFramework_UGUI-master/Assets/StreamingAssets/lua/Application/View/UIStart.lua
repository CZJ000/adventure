require "Framework/MVC/View"
require "Application/Common/define"

UIStart=View:new()



function UIStart:new(o)

    o = o or View:new(o)
    setmetatable(o,self)
    self.__index=self
    
    ResourceManager:LoadPrefab('uiselect', { 'uiselect' }, OnLoadFinish);
 
  
   
    return o;
end

function OnLoadFinish(objs)
local Canvas=GameObject.Find("Canvas");
local go = UnityEngine.GameObject.Instantiate(objs[0],Canvas.transform);
 
 
    
   
   -- Util.Log(self.startBtn.name);
end

--region 常量
--endregion

--#region 事件
    
--#endregion

--#region 字段

-- #endregion

--#region 属性
   
--#endregion

-- #region 方法
 
-- #endregion

-- #region Unity回调
-- #endregion

-- #region 事件回调
   
-- #endregion

--#region 帮助方法
--#endregion

