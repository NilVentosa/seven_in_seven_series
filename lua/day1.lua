local function ends_in_3(num)
    local string_num = tostring(num)
    return string.sub(string_num, #string_num, #string_num) == '3'
end

print('ends_in_3')
print(ends_in_3(123))
print(ends_in_3(1234))
print('.......')


local function is_prime(num)
    local thing = num - 1
    while thing > 1 do
        if num % thing == 0 then
            return false
        end
        thing = thing - 1
    end
    return true
end

print('is_prime')
print(is_prime(293))
print(is_prime(12))
print('.......')

local function print_first_n_primes_ending_in_3(num)
    local primes = {}
    local i = 1
    while #primes < num do
        if is_prime(i) and ends_in_3(i) then
            table.insert(primes, i)
            print(i)
        end
        i = i + 1
    end

end

print('print_first_n_primes_ending_in_3')
print_first_n_primes_ending_in_3(5)
print('.......')

local function for_loop(a, b, f)
    local i = a
    while i <= b do
        f(i)
        i = i + 1
    end
end


print('for_loop')
for_loop(1, 5, function(n) print(n * 3) end)
print('.......')

local function reduce(max, init, f)
    local intermidiate = init
    for i = 1, max do
        intermidiate = f(intermidiate, i)
    end
    return intermidiate
end

print(reduce(5, 0, function(a, b) return a + b end))

local function factorial(n)
    return reduce(n, 1, function(a,b) return a * b end)
end

print(factorial(5))

