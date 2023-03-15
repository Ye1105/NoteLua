--[[

]]
function newUserInfo()
    local member = {
        id = 123,
        name = "tom"
    }

    function getId()
        return member.id
    end

    function setId(val)
        member.id = val
    end

    --只暴露了这几个方法
    return {
        getId = getId,
        setId = setId
    }
end

uInfo = newUserInfo()
id = uInfo.getId()
print(id)

uInfo.setId(111)
print(uInfo.getId())
