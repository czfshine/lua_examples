--把环境变量当作全局变量来用


local f=function (t,i) return os.getenv(i) end
setmetatable(getfenv(),{__index=f})

print(a,USER,PATH)
