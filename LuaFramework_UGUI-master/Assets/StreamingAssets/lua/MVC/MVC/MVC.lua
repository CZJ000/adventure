require "MVC/MVC/Model"
require "MVC/MVC/View"
require "MVC/MVC/Controller"

MVC={};

this=MVC;

this.Models={};

this.Views={};

this.CommandMap={};

function MVC.RegisterModel(model)

	Models[ModelsList.GameModel]=model;
end

function MVC.RegisterView(view_name,view)
	-- body
	if(Views[view_name]~=nil)
	then
		Views[view_name]=nil;
	end
	view.RegisterEvents();
	Views[view_name]=view;
end

function MVC.RegisterController(eventName, controllerType)
	-- body
	CommandMap[eventName]=controllerType;
end


function MVC.SendEvent( eventName,data )
	-- body
	if(CommandMap[eventName]~=nil)
	then
		CommandMap[eventName].Execute(data);
	end
	for _,v in ipairs(Views) do
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