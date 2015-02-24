-- 用协程实现埃拉托色尼筛法
-- 使用：
--lua -e N=1000 sieve.lua | column

-- 生成从2到n的所有数字
function gen (n)
  return coroutine.wrap(function ()
    for i=2,n do coroutine.yield(i) end
  end)
end

-- 过滤g产生的所有数字，删除掉所有p的倍数
function filter (p, g)
  return coroutine.wrap(function ()
    while 1 do
      local n = g()
      if n == nil then return end
      if math.mod(n, p) ~= 0 then coroutine.yield(n) end
    end
  end)
end


N=N or 1000		-- 从命令行
x = gen(N)		-- 生成2到N的所有数字

while 1 do
  local n = x()		-- 取出一个
  if n == nil then break end
  print(n)		-- 必需是素数
  x = filter(n, x)	-- 现在删除所有的倍数
end
