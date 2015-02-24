-- 建立表格，将所输入的列表变成统计数据
-- 输入两个参数 项目 数据
-------------------------------------
--例如：  传入
-- a   2
-- b   3
-- a   5
-- c   4
-- b   5
-----
--输出：
-- a   2   5
-- b   3   5
-- c   4
---------------------------------------------------
local A
while 1 do
 local l=io.read()
 if l==nil then break end
 local _,_,a,b=string.find(l,'"?([_%w]+)"?%s*(.*)$')
 if a~=A then A=a io.write("\n",a,":") end
 io.write(" ",b)
end
io.write("\n")
