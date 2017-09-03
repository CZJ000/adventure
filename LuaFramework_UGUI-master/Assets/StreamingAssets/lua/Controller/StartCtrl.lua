
StartCtrl = {};

local this = StartCtrl;

local message;
local transform;
local gameObject;

--构建函数--
function StartCtrl.New()
	logWarn("MessageCtrl.New--->>");
	return this;
end

function StartCtrl.Awake()
	logWarn("MessageCtrl.Awake--->>");
	panelMgr:CreatePanel('Message', this.OnCreate);
end

--启动事件--
function StartCtrl.OnCreate(obj)
	gameObject = obj;

	message = gameObject:GetComponent('LuaBehaviour');
	message:AddClick(MessagePanel.btnClose, this.OnClick);

	logWarn("Start lua--->>"..gameObject.name);
end

--单击事件--
function StartCtrl.OnClick(go)
    
	destroy(gameObject);
    
end

--关闭事件--
function StartCtrl.Close()
	panelMgr:ClosePanel(CtrlNames.Message);
end