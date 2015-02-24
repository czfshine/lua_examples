-----------------------------------------------------
--���ַ��󷽳̵Ľ�-----------------------------------
-----------------------------------------------------

delta=1e-6	-- ���

function bisect(f,a,b,fa,fb)
 local c=(a+b)/2
 io.write(n," c=",c," a=",a," b=",b,"\n")
 if c==a or c==b or math.abs(a-b)<delta then return c,b-a end
 n=n+1
 local fc=f(c)
 if fa*fc<0 then return bisect(f,a,c,fa,fc) else return bisect(f,c,b,fc,fb) end
end

--Ѱ�Һ���F������[a,b]�Ľ��ƽ�.��Ҫf(a)*f(b)<0
function solve(f,a,b)
 n=0
 local z,e=bisect(f,a,b,f(a),f(b))
 io.write(string.format("after %d steps, root is %.17g with error %.1e, f=%.1e\n",n,z,e,f(z)))
end

-- ���Ӻ���
function f(x)
 return x*x*x-x-1
end

--������[1,2]�����
solve(f,1,2)
