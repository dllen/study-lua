print ("Hello World")

print ("Hello Dllen")


print (type("hello"))

print (type(1))

print (type(print))

print (type(true))


print ("hello".."world")

print(#"scp")

local tbl1 = {}

local tbl2 = {"apple", "banner", "pear", "orange"}

--table test

a = {}

a["key"] = "value"

key = 10

a[key] = 22

a[key] = a[key] + 11

for k, v in pairs(a) do
    print (k.." : "..v)
end


for key, val in pairs(tbl2) do
    print("Key", key)
end

a3 = {}

for i  = 1, 10 do
    a3[i] = i
end

a3["key"] = "val"

print(a3["key"])

print(a3["none"])

--function

function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n-1)
    end
end

print(factorial1(5))

factorial2 = factorial1

print(factorial2(5))





--test

--[[
  hello
  world
--]]
