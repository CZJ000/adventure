--require "MVC/MVC/Model"
--require "MVC/MVC/View"
--require "MVC/MVC/Controller"

MVC={};

this=MVC;

this.Models={};

this.Views={};

this.CommandMap={};

function MVC.RegisterModel(model)

	this.Models[ModelsList.GameModel]=model;
end

function MVC.RegisterView(view_name,view)
	-- body
	if(this.Views[view_name]~=nil)
	then
		this.Views[view_name]=nil;
	end
	view.RegisterEvents();
	this.Views[view_name]=view;
end

function MVC.RegisterController(eventName, controllerType)
	-- body
	this.CommandMap[eventName]=controllerType;
end


function MVC.SendEvent( eventName,data )
	-- body
	if(this.CommandMap[eventName]~=nil)
	then
		this.CommandMap[eventName].Execute(data);
	end
	for _,v in ipairs(this.Views) do
		if(isInArray(v.AttentionEvents,eventName))
		then
		    v.HandleEvent(eventName,data);

		end
	end
end

function isInArray(t, val)  
    for _, v in ipairs(t) do  
        if v == val then  
            return true  
        end  
    end  
    return false  
end  