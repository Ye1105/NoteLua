--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-15 09:32:37
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-16 09:25:25
FilePath: \LuaLesson\13.3_自索引实现继承.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-15 09:32:37
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-15 09:32:44
FilePath: \LuaLesson\13.3_面向对象自索引实现继承.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    NOTE:自索引实现继承 典型的面向对象的写法，子类继承父类，并调用父类的方法

]]
father = {
    a = 1,
    b = 2
}

function father:faSay()
    print("hello father a ：", self.a)
end

father:faSay()

father.__index = father --自索引

son = {
    c = 3,
    d = 4
}

function son:sonSay()
    print("hello son c :", self.c)
end

son:sonSay()

print("++++++++++++++++++++++++++++++++")

setmetatable(son, father) -- 加元表

print(son.d)

son:faSay() --典型的面向对象的写法，子类继承父类，并调用父类的方法
