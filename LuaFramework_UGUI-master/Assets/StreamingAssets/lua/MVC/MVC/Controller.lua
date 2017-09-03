Controller={}

function Controller:new(o)

    o= o or {}
	setmetatable(o, self)
    self.__index=self
	return o

end

function Controller.GetModel( ... )
	-- body
	return MVC.GetModel()
end

function Controller.GetView( ... )
	-- body
	return MVC.GetView()
end

function Controller.RegisterModel( model )
	-- body
	MVC.RegisterModel(model)
end

function Controller.RegisterView( view )
	-- body
	MVC.RegisterView(view)
end
function Controller.RegisterController( eventName,controllerType )
	-- body
	MVC.RegisterController(eventName,controllerType)
end


function Controller.Execute( data )
	-- body
end