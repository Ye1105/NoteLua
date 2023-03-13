--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-13 16:57:41
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 16:57:48
FilePath: \LuaLesson\9_select处理可变参数.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    NOTE
    + 用 select 处理可变参
        + select(n, ...) 表示返回可变参的一部分数据，从第n个位置
        + select('#',...) 表示返回元素个数
]]
-- print(1)

-- print(1, 2)

-- function func(...)
--     --print(...)

--     print(select(1, ...))
--     print(select(2, ...))
--     print(select(3, ...))
--     print(select(4, ...))
--     print(select(5, ...))
--     print("\n")
--     print(select('#', ...))
--     print("\n")
--     print(select(-1, ...))
-- end

-- func(1, 2, 3, 4)

-- 求和
function funcTest(...)
    sum = 0
    count = select("#", ...)
    for i = 1, count, 1 do
        sum = sum + (select(i, ...))
    end

    return sum
end

print(funcTest(1, 2, 3, 4, 5))
