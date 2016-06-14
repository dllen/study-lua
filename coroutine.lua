co = coroutine.create(
    function (i)
        print(i)
    end
)

coroutine.resume(co, 1)

print(coroutine.status(co))

print("-------------------")

co = coroutine.wrap(
    function(i)
        print(i)
    end
)

co(1)

print("-------------------")

co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i==3 then
                print(coroutine.status(co2))
                print(coroutine.running())
            end
            coroutine.yield()
        end
    end
)

coroutine.resume(co2)

coroutine.resume(co2)

coroutine.resume(co2)

coroutine.resume(co2)

coroutine.resume(co2)

print(coroutine.status(co2))
print(coroutine.running())

print("-------------------")

function foo(a)
    print("foo output ", a)
    return coroutine.yield(2*a)
end

co = coroutine.create(function(a, b)
    print("first output", a, b)
    local r = foo(a + 1)

    print("sencond output", r)
    local r,s = coroutine.yield(a+b, a-b)

    print("third output", r, s)
    return b, "exit"
end
)

print("main", coroutine.resume(co, 1, 10))
print("----------------")

print("main", coroutine.resume(co, "r"))
print("----------------")

print("main", coroutine.resume(co, "x", "y"))
print("----------------")

print("main", coroutine.resume(co, "x", "y"))
print("----------------")


--
--调用resume，将协同程序唤醒,resume操作成功返回true，否则返回false；
--协同程序运行；
--运行到yield语句；
--yield挂起协同程序，第一次resume返回；（注意：此处yield返回，参数是resume的参数）
--第二次resume，再次唤醒协同程序；（注意：此处resume的参数中，除了第一个参数，剩下的参数将作为yield的参数）yield返回；
--协同程序继续运行；
--如果使用的协同程序继续运行完成后继续调用 resume方法则输出：cannot resume dead coroutine
--


