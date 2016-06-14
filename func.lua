-- function test 2
--

function anonymous(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end


tab = {key1 = "val1", key2 = "val2"}

anonymous(tab, function(key, val)
    return key .." = "..val
end)


function max(num1, num2)
    if(num1 > num2) then
        result = num1
    else
        result = num2
    end

    return result
end

print (max(10,4))

print (max(1,2))


myprint = function(param)
    print("##", param, "##")
end

function add(a, b, functionPrint)
    result = a + b
    functionPrint(result)
end

myprint(10)

add(2,8, myprint)

s, e = string.find("hello", "l");

print(s, e)

function maximum(a)
    local mi = 1
    local m = a[mi]
    for i, val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end

print(maximum({23,56,89,345,21,3}))

function average(...)
    result = 0
    local arg = {...}
    for i,item in ipairs(arg) do
        result = result + item
    end
    print("number num "..#arg)
    return result/#arg
end

print("average ", average(1,2,3,4,5,6,7,8,9,10))
