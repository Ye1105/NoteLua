--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-14 10:21:43
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-14 10:24:53
FilePath: \LuaLesson\12_元表与元方法.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    NOTE: 元表 metatable

    + 元表并不是一个普通的表，而是一套自定义的计算规则，用这些规则可以实现表与表之间的运算
      而这些规则，都以函数的方式写在元表中，所以又称为元方法（就是写在元表里面的方法）

    + 类似其他语言中的运算符重载作用

    + [url](https://www.lua.org/manual/5.4/manual.html#2.4)

]]
t1 = { 11, 22, 33, nil, 2323 }
t2 = { 111, 222, 333, 44 }
metatT3 = {}

setmetatable(t1, metatT3)
setmetatable(t2, metatT3)

metatT3.__add = function(t1, t2)
    local count = ((#t1 > #t2 and { #t1 }) or { #t2 })[1]
    --print(count)
    local res = {}

    for i = 1, count, 1 do
        local num1 = t1[i] or 0
        local num2 = t2[i] or 0
        res[i] = num1 + num2
    end

    -- for i = 1, count, 1 do
    --     local num1 = ((type(t1[i]) == "number" and { t1[i] }) or { 0 })[1]
    --     local num2 = ((type(t2[i]) == "number" and { t2[i] }) or { 0 })[1]
    --     res[i] = num1 + num2
    -- end

    return res
end

--t3 = t1 + t2

-- for key, value in pairs(t3) do
--     print(key, value)
-- end

t4 = { "abc", "def", "xyz", 66 }
t5 = { 11, 23, 3242, "adsfa" }

local metatT4 = {
    __add = function(t1, t2)
        local count = ((#t1 > #t2 and { #t1 }) or { #t2 })[1]
        --print(count)
        local res = {}

        for i = 1, count, 1 do
            local str1 = t1[i] or ""
            local str2 = t2[i] or ""
            res[i] = str1 .. str2
        end

        return res
    end
}

setmetatable(t4, metatT4)
setmetatable(t5, metatT4)
t6 = t4 + t5

for key, value in pairs(t6) do
    print(key, value)
end

-- 在 lua 中，我们认为 nil 是无效的，所以如果 nil 在表的最后，就直接扔掉
-- 如果 nil 后面有其他非 nil 的元素，不得已必须得带着
