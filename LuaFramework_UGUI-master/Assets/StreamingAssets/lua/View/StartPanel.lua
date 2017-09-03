local transform;
local gameObject;

StartPanel = {};
local this = StartPanel;

--启动事件--
function StartPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform;
      
	this.InitPanel();
	logWarn("Awake lua--->>"..gameObject.name);
end

--初始化面板--
function StartPanel.InitPanel()

	this.Q1=transform:FindChild("UIQ1").gameObject;
	this.Q2=transform:FindChild("UIQ2").gameObject;
	this.Q3=transform:FindChild("UIQ3").gameObject;
	this.Q4=transform:FindChild("UIQ4").gameObject;
	
end

--单击事件--
function StartPanel.OnDestroy()
	logWarn("OnDestroy---->>>");
end
