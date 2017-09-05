SceneArg={}
SceneArg.index=0;

function SceneArg:new(o)

    o= o or {}
    setmetatable(o,self)
    self.__index=self;
    return o
end