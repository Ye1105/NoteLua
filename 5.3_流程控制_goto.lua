--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-10 15:30:22
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-10 16:27:33
FilePath: \LuaLesson\5.3_流程控制语句.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-10 15:30:22
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-10 15:43:11
FilePath: \LuaLesson\5.3_流程控制语句.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    流程控制语句

    + goto FLAG 语句 跳转到指定标记处，也可以跳出循环，FLAG是一个标记位,相当于一个锚点

        + 不能从外面 goto  到代码块里面，即不能到 do ... end 中的锚点

        + 不能跳出或跳入一个函数，因为函数也是一个block(块)

        + goto 不能跳入本地(local)作用域

    代码块(作用域)  do ... end


]]
-- do
--     local a = 123
-- end

-- print(a)


-- i = 0

-- ::FLAG1::
-- print(i)

-- goto FLAG1;

do
    a = 123
    ::FLAG1::
    print(a)

    ::FLAG2::

    --goto FLAG3 --此处 goto 是在 local b 的作用域外面，所以报错

    local b = 323

    ::FLAG3::

    print(b)

    --goto FLAG3 --此处 goto 是在 local b 的作用域里面
    --goto FLAG1
end
