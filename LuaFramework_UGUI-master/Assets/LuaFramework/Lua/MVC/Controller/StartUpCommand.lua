
require "MVC/Common/define"

StartUpCommand=Controller:new()
function StartUpCommand:new (o)
  o = o or Controller:new(o)
  setmetatable(o, self)
  self.__index = self
  return o
end

function StartUpCommand.Execute( data )
	-- body
	Util.Log("helloworld");
  
end