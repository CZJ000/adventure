Model={};


function Model.new( o )
	-- body
	o=o or {}
	setmetatable(o,self)
	self.__index=self
	return o;
end

function Model.SendEvent( eventName,data )
	-- body
	MVC.SendEvent(eventName,data);
end