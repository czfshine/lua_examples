-- 让全局变量只读

local f=function (t,i) error("cannot redefine global variable `"..i.."'",2) end
local g={}
local G=getfenv()
setmetatable(g,{__index=G,__newindex=f})
setfenv(1,g)

-- 例子
rawset(g,"x",3)
x=2
y=1	-- 不能修改 y
