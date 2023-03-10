--[[
    for 变量名=初始值,结束值,步长 do
        ...
    end

    for 循环分为数值循环和泛型循环（类似 foreach)


]]
-- for i = 1, 10, 1 do
--     io.write(i, " ")
-- end

-- io.write('\n')

-- for i = 2, 10, 2 do
--     io.write(i, " ")
-- end

-- io.write('\n')

-- for i = 10, -10, -2 do
--     io.write(i, " ")
-- end

t1 = {
    11, 22, 33, 44, 55, 66
}

for i = 1, 6, 1 do
    io.write(t1[i], " ")
end
