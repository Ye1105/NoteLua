--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-10 14:31:39
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-10 14:33:54
FilePath: \LuaLesson\5.2_流程控制语句.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    + while
        + while 条件 do
            ...
          end

        + break 只能跳出一层循环

        + goto FLAG 语句 跳转到指定标记处，也可以跳出循环，FLAG是一个标记位,相当于一个锚点

        + break 只能跳出当前循环，而 goto 可以跳到指定位置，这样可以忽略一些代码


    + repeat

        + repeat
            ...
          until 条件

    while 和 repeat 区别： while 循环中，条件不成立时结束循环； repeat 循环中，当条件成立时，结束循环；

    在 lua 中，没有这些运算符，i++,i--,++i,--i,+=,-=
    a=b=1 这种语法也不支持

]]
-- 求和 1+2+3+...100

-- i, sum = 0, 0

-- while i < 100 do
--     -- if i > 2 then
--     --     break;
--     -- end

--     if i > 1 then
--         goto Flag
--     end

--     i = i + 1
--     sum = sum + i;
-- end


-- print('===================')

-- ::Flag::

-- print(sum)

-- print('+++++++++++++++++++')

i, sum = 0, 0

repeat
    i = i + 1
    sum = sum + i
until i >= 100

print(i, sum)
