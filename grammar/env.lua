--�ѻ�����������ȫ�ֱ�������


local f=function (t,i) return os.getenv(i) end
setmetatable(getfenv(),{__index=f})

print(a,USER,PATH)
