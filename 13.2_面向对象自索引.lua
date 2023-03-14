--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-14 17:35:38
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-14 17:36:13
FilePath: \LuaLesson\13.2_面向对象自索引.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[

    自索引  自己索引自己


]]
t1 = {
    id = 123,
    name = 'test'
}

meta = {
    phone = '123',
    --__index = meta --此时 meta 不存在，所以 此处的索引 __index=nil
}

meta.__index = meta

setmetatable(t1, meta)

print(t1, meta)
print(t1.phone)

print("+++++++++++++++++++++++++++++")

for key, value in pairs(meta) do
    print(key, value)
    -- if type(value) == "table" then
    --     for k, v in pairs(value) do
    --         print(k, v)
    --     end
    -- end
end
