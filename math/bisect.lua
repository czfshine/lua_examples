-----------------------------------------------------
--二分法求方程的解-----------------------------------
-----------------------------------------------------

delta=1e-6	-- 误差

function bisect(f,a,b,fa,fb)
 local c=(a+b)/2
 io.write(n," c=",c," a=",a," b=",b,"\n")
 if c==a or c==b or math.abs(a-b)<delta then return c,b-a end
 n=n+1
 local fc=f(c)
 if fa*fc<0 then return bisect(f,a,c,fa,fc) else return bisect(f,c,b,fc,fb) end
end

--寻找函数F在区间[a,b]的近似解.需要f(a)*f(b)<0
function solve(f,a,b)
 n=0
 local z,e=bisect(f,a,b,f(a),f(b))
 io.write(string.format("after %d steps, root is %.17g with error %.1e, f=%.1e\n",n,z,e,f(z)))
end

-- 例子函数
function f(x)
 return x*x*x-x-1
end

--在区间[1,2]找零点
solve(f,1,2)
