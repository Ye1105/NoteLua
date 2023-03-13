--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-09 15:52:37
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 09:30:18
FilePath: \LuaLesson\4.1_基本运算符.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-09 15:52:37
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-09 15:54:24
FilePath: \LuaLesson\4.1_基本运算符.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    + 赋值运算符  =
        + lua 中变量是弱类型，就是说变量名是没有类型的，其类型取决于所赋的值，并且用一个变量可以随时切换成不同的变量类型
        + 可以多重赋值
        + a,b=b,a  值交换  类似于 swap

    + 算术运算符
        + 加减乘除
        + 取模
        + 指数（次方）

    + 关系运算符
        +  ==
        +  ~=
        +  >=
        +  <=
        +  关系运算符的结果只能是 true 或 flase, 且只能在相同类型的数据间运算（运算时不会做隐式类型转换）

    + 对于对象型的数据（function，usedata，table），比较运算是比较其引用
]]
-- a, b, c = 123 --等价于 a,b,c=123,nil,nil
-- print(a, b, c)

-- a, b, c = 1, false, 3
-- print(a, b, c)

-- print(10 / 3)
-- print(10 / 3.0)

-- print(10 % 3)
-- print(10 % 3.0)

-- print(2 ^ 4)

--不等于
-- print(1 ~= 1)

-- --等于
-- print(1 == 1)

-- print(1 == '1')

info1 = { a = 1 }

info2 = { a = 1 }

print(info1 == info2)

print(info1.a == info2.a)
