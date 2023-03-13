--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-13 15:59:18
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 15:59:24
FilePath: \LuaLesson\8_function常见表现形式.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    
]]

-- 直接调用
function show(a,b)
    print(a,b)
end

show(1,2)

-- 当右值，赋值给一个变量
show1=show

show1(3,4)


-- 当参数

function sum2(c,d)
    return  c+d
end

function sum3(func,a,b)
    print(func(a,b))
end

sum3(sum2,1,2)


-- 当返回值
function fun4()
    return  sum2
end

-- funcall=fun4()
-- print(funcall(3,4))
print(fun4()(99,99))


--匿名函数当返回值
function func8()
    return function (a,b)
        return  a+b
    end
end

print(func8()(10,10))


-- 多个返回值

function func9()
    function func9_1(a,b)
        return a+b
    end

    function func9_2(a,b)
        return  a-b
    end

    return  func9_1,func9_2
end

rs1,rs2=func9()

print(rs1(11,12))
print(rs2(11,12))