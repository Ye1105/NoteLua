--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-13 10:41:56
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 14:39:44
FilePath: \LuaLesson\6.1_table.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    NOTE: table
    + array

    + hash

    + 常用的函数 api

        + table.concat(list, sep, i, j) 将数组中的元素拼接成一个字符串

        + table.remove(list, pos) 删除数组中元素，默认删除最后一个

        + table.insert(list, pos, value)  向指定位置插入元素，默认插入到最后
]]
-- 自定义下标
-- t1 = { 1, 2, 3 }
-- for index, value in ipairs(t1) do
--     io.write(index, " =>", value, "\n")
-- end

t1 = { "abc", "bfg","mn", "cji"}

-- t2 = { "abc", "efg", nil, "hji" }

-- t3 = { "abc", "efg", name = "xiaoming", "hji" }

-- -- print(table.concat(t1))

-- -- print(table.concat(t1, "--", 2))

-- -- print(table.concat(t1, "--", 2, 3))

-- -- --print(table.concat(t2))

-- -- print(table.concat(t3))

-- print(table.concat(t1, " "))

-- table.remove(t1, 1)

-- print(table.concat(t1, " "))

-- table.insert(t1, 2, "yejiancong")

-- print(table.concat(t1, " "))

-- table.sort(t1)

function funSort(a,b)
    return  a>b
end


-- funSort 必须在 table.sort 使用之前声明
table.sort(t1,funSort)

--
print(table.concat(t1, " "))


