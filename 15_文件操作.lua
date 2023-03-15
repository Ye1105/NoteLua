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
         | "w" -- 写模式。
         | "a" -- 追加模式。
         | "r+" -- 更新模式，所有之前的数据都保留。
         | "w+" -- 更新模式，所有之前的数据都删除。
         | "a+" -- 追加更新模式，所有之前的数据都保留，只允许在文件尾部做写入。

    + io.read()

]]
--https://www.bilibili.com/video/BV1yv4y1g78G?p=35&spm_id_from=pageDriver&vd_source=874ef91701c817855be9727acd96b7cd
f1 = io.open('./README.md', "r")

if f1 == nil then
    print("文件不存在")
else
    print(f1)
end
