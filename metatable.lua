
mytable = {}

mymetatable = {}

setmetatable(mytable, mymetatable)

mytable = setmetatable({},{})

getmetatable(mytable)

other = {foo = 3}

t = setmetatable({},{__index = other})

print(t.foo)

print(t.bar)



mytable = setmetatable({key1 = "value1"}, {
    __index = function(mytable,key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})

print(mytable.key1, mytable.key2)

mymetatable = {}

mytable = setmetatable({key1 = "value1"}, {__newindex = mymetatable})

print(mytable.key1)

mytable.newKey = "new value"

print(mytable.newKey, mymetatable.newKey)

mytable.key1 = "new value2"

print(mytable.key1, mymetatable.key1)


mytable = setmetatable({key1 = "value1"}, {
    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\""..value.."\"")
    end
})

mytable.key1 = "new value"

mytable.key2 = 4

print(mytable.key1, mytable.key2)


function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

mytable = setmetatable({1,2,3}, {
    __add = function(mytable, newtable)
        for i = 1, table_maxn(newtable) do
            table.insert(mytable, table_maxn(mytable)+1, newtable[i])
        end
        return mytable
    end
})

secondtable = {4, 5,6}

mytable = mytable + secondtable

for k, v in ipairs(mytable) do
    print(k, v)
end

mytable = setmetatable({10}, {
    __call = function(mytable, newtable)
        sum = 0
        for i = 1, table_maxn(mytable) do
            sum = sum + newtable[i]
        end
        for i = 1, table_maxn(newtable) do
            sum = sum + newtable[i]
        end
        return sum
    end
})

newtable = {10, 20, 30}

print(mytable(newtable))

mytable = setmetatable({10, 20, 30}, {
    __tostring = function(mytable)
        sum = 0
        for k, v in pairs(mytable) do
            sum = sum + v
        end
        return "sum of all table element "..sum
    end
})

print(mytable)










