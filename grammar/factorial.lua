--用函数闭包来求阶乘


Y = function (g)
      local a = function (f) return f(f) end
      return a(function (f)
                 return g(function (x)
                             local c=f(f)
                             return c(x)
                           end)
               end)
end



F = function (f)
      return function (n)
               if n == 0 then return 1
               else return n*f(n-1) end
             end
    end

factorial = Y(F)


function test(x)
	io.write(x,"! = ",factorial(x),"\n")
end

for n=0,16 do
	test(n)
end
