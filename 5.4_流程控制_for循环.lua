--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-10 16:32:33
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 10:21:40
FilePath: \LuaLesson\5.4_流程控制_for循环.lua
-- Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    for 变量名=初始值,结束值,步长 do
        ...
    end

    for 循环分为数值循环和泛型循环（类似 foreach)

    + for k,v in ipairs(table)do
            ...
      end

      + ipairs 顺序遍历，中间的序号不会断开，遇到 k=>v 直接跳过，遇到第一个 nil 就会直接中止，一般情况下，用于数组类型的集合

    + for k,v in pairs(table)do
        ...
      end

      + pairs 遇到 nil 会跳过，同事适用数组类型和 k=>v 类型的集合，混搭也没问题，会优先获取数组类型的数据

      + pairs 的适用范围大于 ipairs
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

-- t1 = {
--     11, 22, 33, 44, 55, 66
-- }

-- -- for i = 1, 6, 1 do
-- --     io.write(t1[i], " ")
-- -- end


-- for index, value in ipairs(t1) do
--     print(index, value)
-- end

--九九乘法表

for i = 1, 9 do
    for j = 1, i do
        io.write(j, "*", i, "=", i * j, "\t")
    end
    io.write("\n")
end
