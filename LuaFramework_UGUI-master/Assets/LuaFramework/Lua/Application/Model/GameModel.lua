GameModel={}

GameModel=Model.new()
function GameModel.new(o)
	-- body
	o=o or Model.new()
	setmetatable(o,self)
	self.__index=self
	return o
end