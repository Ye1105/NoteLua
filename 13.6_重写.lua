--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-15 11:09:50
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-15 11:10:44
FilePath: \LuaLesson\13.6_重写和私有化.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[

]]
userInfo = {
    id = 1,
    name = "yejiancong",
    age = 99
}

function userInfo:new(obj)
    local obj = obj or {}
    setmetatable(obj, self) --谁调用 new 方法，此处的 self 就是谁
    self.__index = self
    return obj
end

function userInfo:say()
    print('say')
end

--u3.__index = u3
u1 = userInfo:new()

u2 = u1:new()


print(userInfo.id, userInfo.name, userInfo.age)
print(u1.id, u1.name, u1.age)
print(u2.id, u2.name, u2.age)


print("---------------------------------")
u1.id = 11111

print(userInfo.id, userInfo.name, userInfo.age)
print(u1.id, u1.name, u1.age)
print(u2.id, u2.name, u2.age)

print("---------------------------------")

userInfo:say()
u1:say()
u2:say()

print("---------------------------------")

function u1:say()
    print("u1 say")
end

userInfo:say()
u1:say()
u2:say()

-- userInfo --> u1 --> u2  如果子类没有赋值，则默认用父类的值；同样，如果父类的成员或方法发生了改变，默认会影响子类，前提是子类没有特化
