local function add(a,b)
    assert(type(a) == "number", "a 不是一个数字")
    assert(type(b) == "number", "b 不是一个数字")
    return a+b
 end

--add(10)
--

if pcall(add, 10) then
    print("add success")
else
    print("add failure")
end


pcall(function(i) print(i) end, 33)

pcall(function(i) print(i) error("error..") end, 33)

function f() return false,2 end

if f() then print '1' else print '0' end

function myfunction()
    n = n/nil
end

function myerrorhandler(err)
    print("Error:", err)
end

status = xpcall(myfunction, myerrorhandler)

print(status)


