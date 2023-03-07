--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-07 16:00:41
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-07 16:36:47
FilePath: \LuaLesson\3_基本数据类型.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-07 16:00:41
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-07 16:09:35
FilePath: \LuaLesson\3_基本数据类型.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    1.八种基本数据类型：
        + nil

        + boolean

        + number  【标准 Lua 使用64位整数、双精度，但也可以编译 Lua 使用32位整数、单精度】
            + integer (整数)
            + float （浮点数）

        + string  单引号、双引号都表示 string,
            + 反斜杠  \n 换行，  \t 制表符(tab)

        + function

        + userdata 自定义数据格式

        + thread 协程

        + table 表

        库函数 type 返回一个描述给定值类型的字符串
        type(v) 返回其唯一参数的类型，编码为字符串

        原始输出 [[ /]/]

        在 Lua 中，只有 false 和 nil 才表示 假 ,0 和 空串 表示  真

]]
--a = '123'
--a = 1
--a = true
--print(type(a))
--print(type(15))
--a = 'a\nbc\tf'
--b = [[a\nbc\tf]]
--print(a, '\n', b)
--print(type(print))
--print(type(table))


a = nil
if a then
    print("真")
else
    print("假")
end

a = false
if a then
    print("真")
else
    print("假")
end


a = 0
if a then
    print("真")
else
    print("假")
end

a = ''
if a then
    print("真")
else
    print("假")
end
