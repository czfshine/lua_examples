-- ������񣬽���������б���ͳ������
-- ������������ ��Ŀ ����
-------------------------------------
--���磺  ����
-- a   2
-- b   3
-- a   5
-- c   4
-- b   5
-----
--�����
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
