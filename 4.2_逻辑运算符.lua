--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-10 11:25:10
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-10 11:27:38
FilePath: \LuaLesson\4.2_逻辑运算符.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-10 11:25:10
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-10 11:26:32
FilePath: \LuaLesson\4.2_逻辑运算符.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    + 逻辑运算符
        + and
        + or
        + not

    在 lua 语言中，逻辑运算符与其他语言的运算符不是同一个意思，其运算结果返回值是参与运算的变量之一（not 除外，not z只返回 true 和 false）
    其他语言的逻辑运算，返回值是 0 或 1 （false 或 true) ,意思就是返回一个 bool 值。

    在 lua 中只有 nil 和 false 为 假 ，其他都为真 ，包括 空字符 和 0

    对于 and 和 or ,实行短路运算（又称短路规则，短路求值，就是说，当前面的表达式可以返回值时，就直接返回，不管后面的运算）

]]
--[[
a, b = 1, 2
print(a and b) -- 如果 a 为 真 ，则返回b

a = false
print(a and b) -- 如果 a 不为真 ，则返回 a,不再往后运算(不管b是啥)


-- print('\n')
print('-----------------------')

c, d = 1, 2
print(c or d) -- 如果 c 为真，则返回 c

c = false
print(c or d) -- 如果 c 为 false,则返回 d

print('-----------------------')

e, f = 1, 2
print(not e) ---如果 e 为真，则返回假

e = nil
print(not e)

print('-----------------------')
]]
-- 用 or ,设置默认值
function fun1(a, b)
    a = a or 100
    b = b or 200
    print(a, b)
end

-- fun1()

-- fun1(1)

--实现 三目运算   d=a?b:c

-- 有缺陷 实现三目运算
function fun2(a, b, c)
    print((a and b) or c)
end

fun2(1, 2, 3)

fun2(not 1, 2, 3)

fun2(1, false, 4)

-- 无缺陷 实现三目运算
function fun3(a, b, c)
    res = ((a and { b }) or { c })[1]
    print(res)
end

fun3(1, false, 4)
