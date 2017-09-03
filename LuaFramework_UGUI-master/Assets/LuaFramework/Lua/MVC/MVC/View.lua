View={}
local  this = View
this.AttentionEvents={}
function View.new( o )
	-- body
	o=o or {}
	setmetatable(o,self)
	self.__index=self
	return o
end
function View.RegisterEvents()
	-- body
end

function View.HandleEvent(eventName,data  )
	-- body
end

function View.SendEvent( eventName,data )
	-- body
	MVC.SendEvent(eventName,data)
end