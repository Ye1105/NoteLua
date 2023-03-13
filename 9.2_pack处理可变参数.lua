--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-13 17:37:30
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 17:37:39
FilePath: \LuaLesson\9.2_pack处理可变参数.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[

]]
-- 求和
function funcTest(...)
    t1 = table.pack(...)
    --count = table.pack(...).n
    sum = 0
    for key, value in pairs(t1) do
        if key ~= "n" then
            --print(key, value)
            sum = sum + value
        end
    end
    return sum
end

--print(funcTest(1, 2, 3, 4, nil, 5, 7))

function funcTest2(...)
    t1 = table.pack(...)
    count = table.pack(...).n
    sum = 0
    for i = 1, count, 1 do
        if t1[i] ~= nil then
            sum = sum + t1[i]
        end
    end
    return sum
end

--print(funcTest2(1, 2, 3, 4, nil, 5, 7))

-- 可变参数当表处理
function funcTest3(...)
    t1 = { ... }

    sum = 0

    for key, value in pairs(t1) do
        if value ~= nil then
            --print(key, value)
            sum = sum + value
        end
    end

    return sum
end

print(funcTest3(1, 2, 3, nil, 1212))
