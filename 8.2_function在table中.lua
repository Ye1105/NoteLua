--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-13 16:39:31
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 16:42:58
FilePath: \LuaLesson\8.2_function在table中.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-13 16:39:31
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-13 16:39:46
FilePath: \LuaLesson\8.2_function在table中.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
    NOTE
    function 进阶，table中的 function

]]
function show(a, b)
    print(a, b)
end

tb1 = {
    t1_show = show
}

tb1.t1_show(2, 3)
