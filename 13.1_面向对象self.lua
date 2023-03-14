--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-14 16:08:28
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-14 16:11:20
FilePath: \LuaLesson\13.1_面向对象self.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-14 16:08:28
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-14 16:08:36
FilePath: \LuaLesson\13.1_面向对象.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[

    + 类

    + 对象

    + new class(实例化)

    + 继承

    + 构造

    + 析构


    table {}
    metatable {}

    self
]]
t1 = {
    id = 111,
    name = "yejiancong",
    sex = "女",
    getName = function(obj)
        return obj.name
    end
}

function t1:getSex()
    return self.sex
end

-- t1.getId = function()
--     return t1.id
-- end

-- print(t1.id, t1.name, t1.getId(), t1:getName())

t2 = t1
print(t1, t2)
t1 = nil

-- print(t2.id, t2.name)

-- --print(t2.getId())

-- print(t2.getName(t2))

print(t2:getSex())
