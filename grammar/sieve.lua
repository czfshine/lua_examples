-- ��Э��ʵ�ְ�����ɫ��ɸ��
-- ʹ�ã�
--lua -e N=1000 sieve.lua | column

-- ���ɴ�2��n����������
function gen (n)
  return coroutine.wrap(function ()
    for i=2,n do coroutine.yield(i) end
  end)
end

-- ����g�������������֣�ɾ��������p�ı���
function filter (p, g)
  return coroutine.wrap(function ()
    while 1 do
      local n = g()
      if n == nil then return end
      if math.mod(n, p) ~= 0 then coroutine.yield(n) end
    end
  end)
end


N=N or 1000		-- ��������
x = gen(N)		-- ����2��N����������

while 1 do
  local n = x()		-- ȡ��һ��
  if n == nil then break end
  print(n)		-- ����������
  x = filter(n, x)	-- ����ɾ�����еı���
end
