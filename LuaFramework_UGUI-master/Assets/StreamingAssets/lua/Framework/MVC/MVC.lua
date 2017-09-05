--require "MVC/MVC/Model"
--require "MVC/MVC/View"
--require "MVC/MVC/Controller"

MVC={};


MVC.Models={};

MVC.Views={};

MVC.CommandMap={};


function MVC.RegisterModel(model)

	MVC.Models[ModelsList.GameModel]=model;
end

function MVC.RegisterView(view_name,view)
	-- body
	if(MVC.Views[view_name]~=nil)
	then
		MVC.Views[view_name]=nil;
	end
	view.RegisterEvents();
	MVC.Views[view_name]=view;
end

function MVC.RegisterController(eventName, controllerType)
	-- body
	
	MVC.CommandMap[eventName]=controllerType;
end


function MVC.SendEvent(eventName,data)
	-- body
	if(MVC.CommandMap[eventName]~=nil)
	then
		MVC.CommandMap[eventName].Execute(data);
	end
	for _,v in ipairs(MVC.Views) do
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