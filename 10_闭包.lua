--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-13 18:15:38
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 18:25:34
FilePath: \LuaLesson\10_闭包.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
function fun1(a, b)
    return function()
        return a + b
    end
end

print(fun1(1, 2)())


function fun2()
    return function(a, b)
        return a + b
    end
end

print(fun2()(3, 4))
