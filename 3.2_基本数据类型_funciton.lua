--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-07 16:55:16
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-07 17:15:06
FilePath: \LuaLesson\3_基本数据类型_2_funciton.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-07 16:55:16
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-07 16:56:26
FilePath: \LuaLesson\3_基本数据类型_2_funciton.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    function  在 lua 是一种就基本数据类型，是第一类值

    格式
    function ()
        ...
        ...
    end

]]
-- 无参数
function fun1()
    print("这里是fun")
end

fun1()

--
local function fun2(a, b, c)
    print(a, b, c == 5, "ddddd")
end

fun2(1, 2, 3)


--可变参
function fun4(...)

end

--匿名当右值
--把匿名函数赋值给变量
sum1 = function(a, b)
    return a + b
end
print(sum1(1, 2))

sum2 = sum1
print(sum2(3, 4))

sum6 = function()
    return 1 + 4
end

--当其他函数的参数
function fun5(functionName, a, b)
    local z = functionName()
    print(z, a, b)
end

function fun6(functionName, a, b)
    functionName(a, b)
    print(functionName(a, b))
end

fun5(sum6, 1, 2)

fun6(sum2, 3, 10)
