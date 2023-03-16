--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-16 12:01:54
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-16 12:32:46
FilePath: \LuaLesson\1_包管理\helper.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
local helper = {}

helper.getIP = function()
    return '127.0.0.1'
end

helper.getVersion = function()
    return '1.0.0.0'
end


local tool = {}

tool.getOs = function()
    return 'window'
end

return { helper = helper, tool = tool }
