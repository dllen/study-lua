
--init table
mytable = {}

-- assgin table value
mytable[1] = "Lua"

--remove table
mytable = nil

--lua gc

mytable = {}

print ("mytable type is ", type(mytable))

mytable[1] = "Lua"

mytable["wow"] = "before edit"

print("mytable index 1 ", mytable[1])

print("mytable index wow ", mytable["wow"])

--alternatetable mytable point same table
--

alternatetable = mytable

print("alternatetable index 1", alternatetable[1])

print("alternatetable index wow", alternatetable["wow"])

alternatetable["wow"] = "after edit"

print("mytable index wow", mytable["wow"])

alternatetable = nil

print("alternatetable is ", alternatetable)

print("mytable index wow ", mytable["wow"])

mytable = nil

print("mytable is ", mytable)

function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

tbl = {[1] = "a", [2] = "b", [3] = "c", [26] = "z"}

print("length of table ", #tbl)
print("max value or table", table_maxn(tbl))


