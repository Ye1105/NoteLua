--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-16 12:33:05
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-16 13:38:00
FilePath: \LuaLesson\1_packmanager\am.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
-- require("/1_packmanager/utility")
--require("1_packmanager.utility")

local temp = require("1_packmanager/utility") --相对路径

--print(package.path)

print(temp, temp.helper, temp.tool)

local helper = temp.helper
local tool = temp.tool

print(helper.getVersion())

print(tool.getOs())

helper = {}

helper.getIP = function()
    return '127.1.1.1'
end

print(helper.getIP())


print(package.path)
print(package.cpath)

print(package.loaded)
for index, value in ipairs(package.preload) do
    print(index, value)
end
print(package.preload)
for index, value in ipairs(package.preload) do
    print(index, value)
end
