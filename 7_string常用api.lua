--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-13 15:08:15
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 15:08:43
FilePath: \LuaLesson\7_string常用api.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    NOTE

    + 转小写  string.lower()

    + 转大写  string.upper()

    + 长度  string.len()

    + 反转  string.reverse()

    + 连接 ..

    + 截取 string.sub()   --负数从右往左数

    + 查找 string.find(string, pattern, init, plain) 在字符串 string 中 查找 pattern (可以是表达式)，如果找到，则返回 pattern 第一次出现的开始位置和结束位置;如果没找到则返回 nil
        + string.find(str1,"cd",3)  --从指定位置处开始查找
        + string.find(str1,"cd",-5)  --如果是负数，则是从字符串长度+该负数的下一个位置开始找
        + string.find(str1,"cd",false)  --默认匹配正则表达式
        + string.find(str1,"cd",true)  --最后一个参数，true 是直接当子串处理
    + 替换 string.gsub(s, pattern, repl, n)=>string,number
        + string 替换后的字符串
        + number 替换的数量
]]
str = "123ABC"

str2 = "456efd"

-- 转小写
-- str=string.lower(str)

-- -- 转大写
-- str2=string.upper(str2)

-- -- 长度
-- str2=string.len(str2)

--str2=string.reverse(str)


-- print(str,"\n",str2)

-- print(str..str2..123 ..456) --连接符

-- str4="123456"
-- print(string.sub(str4,2,4))
-- print(string.sub(str4,-3))

-- str5="11111112324dsfsd34fs"
-- a,b=string.find(str5, "fs")
-- print(a,b)

str5 = 'abcd1122abc'
print(string.gsub(str5, "abc", "MM"))
