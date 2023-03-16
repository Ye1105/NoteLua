--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-15 18:00:40
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-16 11:08:40
FilePath: \LuaLesson\15_文件操作.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-15 18:00:40
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-15 18:02:10
FilePath: \LuaLesson\15_文件操作.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
   NOTE 文件操作

    + io.open(filename [, mode])
        + mode:
        -> "r" -- 读模式。
         | "w" -- 写模式。  如果是 io.read 没有文件，则会创建；有文件，则会清空
         | "a" -- 追加模式。
         | "r+" -- 更新模式，所有之前的数据都保留。    从前往后逐步替换
         | "w+" -- 更新模式，所有之前的数据都删除。
         | "a+" -- 追加更新模式，所有之前的数据都保留，只允许在文件尾部做写入。

    + io.read()
        | "n" -- 读取一个数字，根据 Lua 的转换文法返回浮点数或整数。
        | "a" -- 从当前位置开始读取整个文件。
        -> "l" -- 读取一行并忽略行结束标记。
        | "L" -- 读取一行并保留行结束标记。

    + seek(whence,offset)
        +seek() 无参数，返回的是当前位置

        | "set" -- 基点为 0 （文件开头）。
        -> "cur" -- 基点为当前位置。
        | "end" -- 基点为文件尾。
]]
--https://www.bilibili.com/video/BV1yv4y1g78G?p=35&spm_id_from=pageDriver&vd_source=874ef91701c817855be9727acd96b7cd
--f1 = io.open('./README.md', "r")

--[[
if f1 == nil then
    print("文件不存在")
    os.exit()
else
    --print(type(f1), f1)
    io.input(f1) --把 f1 文件句柄输入到 io (当前输入输出终端)

    while true do
        str = io.read()
        if str == nil then
            break
        end
        print(str)
    end

    io.close(f1)
end
]]
-- if f1 == nil then
--     print("文件不存在")
--     os.exit()
-- else
--     --print(type(f1), f1)
--     io.input(f1) --把 f1 文件句柄输入到 io (当前输入输出终端)

--     print(io.read("L"))
--     --print(io.read(2))

--     io.close(f1)
-- end


-- f2 = io.open('./test.md', "w")

-- -- io.input(f2)
-- -- print(io.read("a"))

-- io.output(f2)
-- io.write("ABC")

-- -- io.input(f2)
-- -- print(io.read())

-- io.close(f2)


f3 = io.open('./test.md', "r")
f4 = io.open('./test2.md', "r")

--[[
io.input(f3)
print(io.read())
io.input(f4)
print(io.read())
]]
-- print(f3:read())
-- print(f4:read())

-- print(" ")

-- print(f3:seek())
-- print(f3:read())
-- print(f3:seek())
-- --print(f3:seek("set"))
-- print(f3:seek("cur", 3)) --迭代器指向的位置
-- print(f3:read())

-- --print(f3:seek("end"))
-- print(f3:seek("end", -3))
-- print(f3:read())
-- print(f3:seek("end", -5))
-- print(f3:read()) -- 读出来的显示为空，应该是上一行的换行符

for str in f3:lines() do
    print(str)
end

for str in io.lines('./test.md') do
    print(str)
end

io.close(f3)
io.close(f4)
