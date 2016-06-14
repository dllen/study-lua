
a = 10

while(a < 20)
do
    print("a : ", a)
    a = a + 1
end



for i=10, 1, -1 do
    print(i)
end


function f(x)
    print("invoke function")
    return x*2
end

for i=1, f(5) do print(i)
end


days = {"Suanday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}

for i,v in ipairs(days) do print(v) end

a = 10

repeat
    print("a :", a)
    a = a+1
until(a > 15)


function square(iteratorMaxCount, currentNumber)
    if currentNumber < iteratorMaxCount
    then
        currentNumber = currentNumber + 1
    return currentNumber, currentNumber*currentNumber
    end
end

for i, n in square, 3, 0
do
    print (i,n)
end

function iter(a, i)
    i = i + 1
    local v = a[i]
    if v then
        return i, v
    end
end

function customIpairs(a)
    return iter, a, 0
end


for index, value in customIpairs(days)
do
    print(index, value)
end




