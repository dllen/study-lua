luasql = require "luasql.mysql"

env = assert(luasql.mysql())

conn = assert(env:connect("51daifan", "root", "root", "localhost", 3006))

print(conn)

conn:execute("SET NAMES UTF8")

cur = conn:execute("select * from user limit 0, 1000")

row = cur:fetch({},"a")

file = io.open("user.txt", "w+")

while row do
    var = string.format("%d\t%s\t%s\t%s\r\n", row.objectId, row.username, row.realname, row.email)

    print(var)

    file:write(var)

    row = cur:fetch(row, "a")
end

file:close()

conn:close()

env:close()

