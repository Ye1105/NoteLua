--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-16 14:28:04
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-16 14:29:05
FilePath: \LuaLesson\16_全局环境变量和环境隔离.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[

    在 lua 标准库中，所有的内容，都有一个隐式的前缀 _G

    _G 就是 lua 中的全局环境变量

    local _ENV 指定局部环境变量
]]
-- print(print)
-- print(_G.print)

-- 沙箱 沙盒  虚拟机 虚拟环境
-- 可以指定特有的环境变量
function fun2(code)
    local rs, msg = load(code, "code error", "bt", { print = _G.print }) --预处理的时候，环境变量中只有一个print

    if rs == nil then
        print(msg)
        os.exit()
    end

    print(rs, msg)

    return pcall(rs)
end

--假设这个字符串是前端传过来的，仙子阿要求你当做代码区执行
str = "print(123);os.remove('a.txt');print(456)" --这个代码是危险代码，因为要删文件

fun2(str)                                        --咋们肯定不能让它删文件，1.过滤  2.沙盒


function fun3()
    local _ENV = { print = print }
    print(os)
end
