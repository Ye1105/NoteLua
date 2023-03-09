--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-07 17:14:01
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-09 15:31:33
FilePath: \LuaLesson\3_基本数据类型_3_table.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    table 表，不是指数据库中的表，而是一种数据类型，类似于map,用k-v的方式来表现，理论上来讲，
    除了nil,其他字符都可以作为k值（索引值）

    格式
    table={}

    --类似哈希
    table={
        k=v
    }

    --类似数组  数字下表从 1 开始
    table={v,v,v}

    for 循环遍历
    for k, v in pairs(info) do
        print(k, v)
    end

    + pairs 和 ipairs 异同
       +ipairs 仅仅遍历值，按照索引升序遍历，索引中断停止遍历。
               即不能返回 nil ,只能遇到 0 ，如果遇到 nil 则退出。
               只能遍历到集合中出现的第一个不是整数的key.

       + pairs 能遍历集合的所有元素。即 pairs 可以遍历集合中所有的key，并且除了迭代器本身还可以返回 nil


    //循环嵌套
    for key, value in pairs(info7) do
        print(key, value)
        if type(value) == "table"
        then
            for key2, value2 in pairs(value) do
                print("\t", key2, value2)
            end
        end
    end

]]
info = {
    name = 111,
    sex = true
}

-- for k, v in pairs(info) do
--     print(k, v)
-- end

--print(info.name)


--增加字段
info.age = 12
info["vip"] = 1

-- for k, v in pairs(info) do
--     print(k, v)
-- end

--删除字段
info.sex = nil
info["sex"] = nil



--修改字段
info["vip"] = 2



-- for k, v in pairs(info) do
--     print(k, v)
-- end


-- arr = {
--     1, "b", nil, "c"
-- }

fun1 = function()
    return 1 + 2
end

arr = {
    1, "b", fun1(), "c"
}

--新增字段
arr[5] = 9999

--修改字段
arr[1] = 2

--删除字段
arr[5] = nil

-- for k, v in pairs(arr) do
--     print(k, v)
-- end

--混搭
info5 = {
    name = "tim",
    age = 123,
    sex = false,
    1111,
    "222"
}

-- for key, value in pairs(info5) do
--     print(key, value)
-- end


info6 = {
    1111231,
    nam1 = "tim",
    age = 2,
    sex = false,
    1111,
    "222"
}

-- for index, value in ipairs(info6) do
--     print(index, value)
-- end

-- local tabFiles = {
--     [1] = "test2",
--     [2] = "test2",
--     [6] = "test3",
--     [4] = "test1"
-- }

-- for k, v in ipairs(tabFiles) do --输出"test2",在key等于2处断开
--     print(k, v)
-- end

-- local tabFiles = {
--     [2] = "test2",
--     [6] = "test3",
--     [4] = "test1"
-- }

-- for k, v in ipairs(tabFiles) do --[[什么都没输出，为什么？因为控制变量初始值是按升序来遍历的，当key为1时，value为nil，此时便停止了遍历， 所有什么结果都没输出]]
--                                                                                                            --
--     print(k, v)
-- end

-- local tabFiles = {
--     [2] = "test2",
--     [6] = "test3",
--     [4] = "test1"
-- }

-- for k, v in pairs(tabFiles) do  --输出2 test2, 6 test3, 4 test1
--     print(k, v)
-- end

-- local tabFiles = { "alpha", "beta",[3] = "no",["two"] = "yes" }
-- for i, v in ipairs(tabFiles) do --输出前三个   备注：因为第四个key不是整数
--     print(tabFiles[i])
-- end

-- print("-------------------------------------------------------------")

-- for i, v in pairs(tabFiles) do --输出前三个   备注：因为第四个key不是整数
--     print(tabFiles[i])
-- end



info7 = {
    1111231,
    nam1 = "tim",
    age = 2,
    sex = false,
    1111,
    "222",
    {
        abc = "ddd",
        "1212"
    },
    sons = { 111, 222 }
}


--info7.sons = nil

info7[1] = nil

--嵌套修改
info7.sons[1] = 222222


for key, value in pairs(info7) do
    print(key, value)
    if type(value) == "table"
    then
        for key2, value2 in pairs(value) do
            print("\t", key2, value2)
        end
    end
end
