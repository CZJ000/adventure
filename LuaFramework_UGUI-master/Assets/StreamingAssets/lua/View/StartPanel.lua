local transform;
local gameObject;

StartPanel = {};
local this = StartPanel;

--启动事件--
function MessagePanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform;

	this.InitPanel();
	logWarn("Awake lua--->>"..gameObject.name);
end

--初始化面板--
function MessagePanel.InitPanel()
	this.btnClose = transform:FindChild("UIQ1").gameObject.transform.FindChild("Y");
end

--单击事件--
function MessagePanel.OnDestroy()
	logWarn("OnDestroy---->>>");
end
