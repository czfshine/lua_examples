-- 两种不同方法求斐波那契数列

--十分低效的方法
function fib(n)
	N=N+1
	if n<2 then
		return n
	else
		return fib(n-1)+fib(n-2)
	end
end

-- 缓存通用值（速度快）
function cache(f)
	local c={}
	return function (x)
		local y=c[x]
		if not y then
			y=f(x)
			c[x]=y
		end
		return y
	end
end

--计算时间
function test(s,f)
	N=0
	local c=os.clock()
	local v=f(n)
	local t=os.clock()-c
	print(s,n,v,t,N)
end

--例子测试
n=arg[1] or 30
n=tonumber(n)
print("","n","value","time","evals")
test("plain",fib)
fib=cache(fib)
test("cached",fib)
