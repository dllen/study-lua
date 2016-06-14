--define
--
module = {}

module.constant = "this is a constant"

function module.func1()
    io.write("this is a public func \n");
end

local function func2()
    print("this is private func \n")
end

function module.func3()
    func2()
end

return module
