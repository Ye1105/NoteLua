--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-15 15:04:10
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-15 17:11:45
FilePath: \LuaLesson\14.2_协程双循环切换.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
function sleep(n)
    local now = os.clock()
    while now + n > os.clock() do

    end
end

-- function func1()
--     while true do
--         print("func1==111")
--         sleep(1)
--     end
-- end

function func2()
    -- coroutine.yield(coroutine.resume(handle))
    while true do
        print("xxxxxx")
        a, b = coroutine.yield()
        print("func2==222")
        sleep(1)
    end
end

function func1()
    while true do
        coroutine.resume(handle2)
        print("func1==111")
        sleep(1)
        --coroutine.yield(coroutine.resume(handle2))
    end
end

handle2 = coroutine.create(func2)

handle = coroutine.create(func1)


coroutine.resume(handle)
