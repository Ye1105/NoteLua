--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-15 12:04:05
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-15 14:02:12
FilePath: \LuaLesson\14.1_携程coroutine.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-15 12:04:05
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-15 12:04:12
FilePath: \LuaLesson\14.1_携程coroutine.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    NOTE

    协程不是进程或者线程，其执行过程更类似于子例程，或者说不带返回值的函数调用
    一个程序可以包含多个协程，可以对比与一个进程包含多个线程，因而下面我们来比较协程和线程

    我们知道多个线程相对独立，有自己的上下文，切换受系统控制
    而协程也相对独立，有自己的上下文，但是其切换由自己控制，由当前协程切换到其他协程来控制

    可以把协程看成是一个ke自行决定调度切换的线程

    编程语言 lua 从 5.0 版开始支持协程的概念，极大的扩展了 lua 的能力，lua 的协程通过扩展库 coroutine 来实现

    coroutine.close(co) --关闭携程，返回bool
    coroutine.create(f) -- 创建协程，传入一个function，返回一个协程句柄
    coroutine.isyieldable([co])  --判断协程是否是 yield 状态
    coroutine.resume(co [,val1,...])  --将挂起的协程重新激活
    coroutine.running() --获取正在运行的协程
    coroutine.status(co) --获取co句柄对应的协程的状态[suspended(挂起)，running(执行中)，dead(结束)]
    coroutine.wrap(f) --用 function 创建一个新的协程
    coroutine.yield(...) --挂起当前协程
]]
function funcc1(a, b)
    --print(coroutine.status(handle)) --这里可以看出是执行中状态

    --return a, b, '100w'
    aa = a * 2
    bb = b * 2
    x, y, z = coroutine.yield(a, b, "100w") --挂起协程，一百万给你了，然后问你，还有什么需要帮忙的

    --第二笔业务，查询你有没有IQ
    print(x, y, z)

    xx, yy, zz = coroutine.yield(x, y, z)
end

handle = coroutine.create(funcc1) --去银行办业务，然后告诉大堂经理，要取现金(要执行funcc1),大堂经理会帮你叫号，给你一个小票（handle)

--print(handle, type(handle))

print(coroutine.status(handle)) -- 挂起状态，等待执行或结束 （你拿到小号，等待着叫号，下一步，也肯能这个号作废，也可能叫你去办业务）

--coroutine.resume(handle)        -- 叫到你的号了，你拿着小票去窗口办业务（执行 funcc1)
print(coroutine.resume(handle, 1, 2)) -- resume是阻塞的，要等到调用结束，然后返回调用成功或失败状态(bool) 有返回值（bool),11,22
-- 表示办业务过程中给到柜员的资料(银行卡，身份证)
-- 并且把你的身份证，银行卡还给你，再把你取的一百万给你

--coroutine.close(handle) --业务办完，好评结束
--print(coroutine.status(handle))  -- dead状态状态

print(coroutine.status(handle))

print(coroutine.resume(handle, "aa", "bb", "cc")) --再办一个业务，查查我其他的卡上的余额，IC卡，IQ卡等

-- print(coroutine.status(handle))
