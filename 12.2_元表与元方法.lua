--[[
    Note: __index  __newindex
        + __index
            + 当在一个表中，去取某个 key，

            + 如果该表中有对应的key，就直接返回

            + 如果该表中没有对应的key，元表有，则返回元表的__index
                    没有, 返回 nil
                    有
                        如果 __index 是个表，
                            并且有 key，返回值
                                没有key，返回 nil

                        如果 __index 是个 function,
                            则直接调用该 function ,且表和 key 都会作为该 function 的参数
        + __newindex

            + 如果是表，则在本表里面设一个没有的key的时候，会写到__newindex，
             如果是自身有的key，则写到自身

             + 如果是function,则直接调用，且本表 key  value 都可作为参数


]]
--[[
t1 = {
    id = 123,
    name = "tom"
}


print(t1.age)  --没有key,没有元表 nil

print(t1.name) --有key,不管元表，直接返回

meta = {}      --设置元表，但没有 __index

setmetatable(t1, meta)

print(t1.name)                                    --还是取自己的key

meta.__index = { name = "yejiancong", sex = "女" } --元表设置 __index

print(t1.sex, t1.name)                            --还是自己的key

t1.name = nil                                     --删除自身的key

print(t1.name)                                    -- metatable上的 key


]]
--[[
t2 = {
    id = 123,
    name = "yejiancong"
}


meta = {
    --__index = { phone = "index_phone" }
    __index = function(t, k)
        --print(t, k)
        --print("t[k]", t[k])
        t[k] = "new-phone"
        return "index-phone"
    end
}


--meta = {}

setmetatable(t2, meta)

--meta.__index = { phone = "index_phone" }

print(t2, meta)

print(t2.phone)
print(t2.phone)
]]
t1 = {
    id = 123,
    name = "tom"
}

t2 = {}

meta = {
    --__newindex = t2

    __newindex = function(t, k, v)
        --t[k]=v  --stack overflow 死递归，爆栈
        rawset(t, k, v) --调用原生方法，不调用重载的方法
    end
}

setmetatable(t1, meta)

print(t1.phone)

t1.phone = "txx_phone"

print(t1.phone)

print(t2.phone)

meta.__index = t2

print(t1.phone)
