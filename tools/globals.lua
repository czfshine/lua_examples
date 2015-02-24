-- 利用luac的列表输出，统计全局变量的使用
-- 变量名后跟着的数字是行数，带*号是第一次定义的行数
-- 例子使用：
-- luac -p -l file.lua | lua globals.lua | sort | lua table.lua

while 1 do
 local s=io.read()
 if s==nil then break end
 local ok,_,l,op,g=string.find(s,"%[%-?(%d*)%]%s*([GS])ETGLOBAL.-;%s+(.*)$")
 if ok then
  if op=="S" then op="*" else op="" end
  io.write(g,"\t",l,op,"\n")
 end
end
