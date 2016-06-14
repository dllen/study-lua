
Account = {balance=0}

function Account.withdraw(v)
    Account.balance = Account.balance - v
end


Account.withdraw(100.00)

print(Account.balance)

Rectangle = {area = 0, length = 0, breadth = 0}

function Rectangle:new(o,length,breadth)
    o = o or {}
    setmetatable(o, self)
    self.__index= self
    self.length = length or 0
    self.breadth = breadth or 0
    self.area = length*breadth
    return o
end

function Rectangle:printArea()
    print("Rectangle area ", self.area)
end

r = Rectangle:new(nil,10, 20)

print(r.length, r.breadth)

r:printArea()


print("--------------------")

Shape = {area = 0}

function Shape:new (o, side)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    side = side or 0
    self.area = side * side
    return o
end

function Shape:printArea()
    print("area ", self.area)
end

Square = Shape:new()

function Square:new(o, side)
    o = o or Shape:new(o, side)
    setmetatable(o, self)
    self.__index = self
    return o
end

function Square:printArea()
    print("Square area ", self.area)
end

Circle = Shape:new()

function Circle:new(o, radius)
    o = o or Shape:new(o)
    setmetatable(o, self)
    self.__index = self
    self.area = 3.14*radius*radius
    return o
end

function Circle:printArea()
    print("Circle area", self.area)
end

mysquare = Square:new(nil, 10)
mysquare:printArea()

mycircle = Circle:new(nil, 10)
mycircle:printArea()
