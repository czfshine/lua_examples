-- 一个实现把lua转换成lua字节码的例子
-- 使用：
-- lua luac.lua file.lua

assert(arg[1]~=nil and arg[2]==nil,"usage: lua luac.lua file.lua")
f=assert(io.open("luac.out","wb"))
assert(f:write(string.dump(assert(loadfile(arg[1])))))
assert(f:close())
