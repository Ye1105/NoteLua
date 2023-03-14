--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-14 09:12:50
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-14 10:14:12
FilePath: \LuaLesson\11_闭包实现ipair迭代器.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    NOTE： 迭代器
        + 迭代器（iterator)有时又称光标（cursor)是程序设计的软件设计模式，可在容器对象（container,例如链表或数组）上遍访的接口

]]
t1 = { 11, 22, 33, nil, nil, 55 }

function myIpairs(tab)
    local index = 0
    local count = #tab

    return function()
        index = index + 1
        if index <= count then
            if tab[index] ~= nil then
                return index, tab[index]
            end
        end
    end
end

function myPairs(tab)
    local index = 0
    local count = #tab

    return function()
        local flag = false
        index = index + 1
        while tab[index] == nil do
            index = index + 1

            if index > count then
                flag = true
                break
            end
        end

        if flag == false then
            return index, tab[index]
        end
    end
end

-- for k, v in myIpairs(t1) do
--     print(k, v)
-- end


for k, v in myPairs(t1) do
    print(k, v)
end

-- myPairs(t1)()

-- print(myPairs(t1)())
