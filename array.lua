array = {"Lua", "Tutorial"}

for i=0, 2 do
    print (array[i])
end

array = {}

for i=-2,2 do
    array[i] = i*2
end

for i = -2,2 do
    print(array[i])
end

array = {}

for i=1,3 do
    array[i] = {}
    for j =1,3 do
        array[i][j] = i * j
    end
end

for i=1,3 do
    for j=1,3 do
        print(array[i][j])
    end
end

array = {}

maxRows = 3

maxColumns = 3

for row=1, maxRows do
    for col=1, maxColumns do
        array[row*maxColumns + col] = row*col
    end
end

for row = 1,maxRows do
    for col = 1, maxColumns do
        print(array[row*maxColumns + col])
    end
end

print("----------------------------")

--pairs 遍历数组和非数组部分
--ipairs 只能遍历数组部分

for index, value in pairs(array) do
    print (index, value)
end
