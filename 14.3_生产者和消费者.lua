function sleep(n)
    local now = os.clock()
    while now + n > os.clock() do

    end
end

-- 生产者
function producer()
    print("producer intial")
    local i = 0
    while true do
        print("producer start")
        i = i + 1
        coroutine.yield(i)
        print(" producer end")
    end
end

-- 消费者
function consumer()
    print("consumer intial")
    while true do
        print("consumer start")
        local flag, i = coroutine.resume(producerHandle)
        print(flag, i)
        sleep(2)
        print("consumer end")
    end
end

producerHandle = coroutine.create(producer)
consumerHandle = coroutine.create(consumer)
coroutine.resume(consumerHandle)


--[[
    NOTE 执行步骤

    consumer intial
    consumer start
    producer intial
    producer start
    true	1
    consumer end

    consumer start
    producer end
    producer start
    true	2
    consumer end

    consumer start
    producer end
    producer start
    true	3
    consumer end

    consumer start
    producer end
    producer start
    true	4
]]
