--[[
    元素 metatable

    + __tostring 用函数接管本表的返回值 返回一个 string

    + __call 把表当类处理，此处类似类中的构造函数，可传值

    + rawget(table,index) 取本表中的 index 索引对应的值，不受元表干扰，没有就返回 nil
]]
t1 = {
    id = 123,
    name = "yejiancong"
}

meta = {}

setmetatable(t1, meta)

--print(t1)

-- meta.__tostring = function(t)
--     local str = ""
--     for k, v in pairs(t) do
--         str = str .. k .. ":" .. v .. ";"
--     end
--     return str
--     --return "tostring"
-- end

--print(t1)


meta.__call = function(t, ...)
    print(t)
    print(...)
    local t2 = { ... }
    for key, value in pairs(t2) do
        print(key, value)
    end
end

print("")
t1(123, 456)

print(rawget(t1, "id"))
