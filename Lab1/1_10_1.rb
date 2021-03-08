def collatzSequenceLen(num, acc = 1)
    if num == 1
        return acc
    end

    if num.even?
        collatzSequenceLen(num / 2, acc + 1)
    else
        collatzSequenceLen(num * 3 + 1, acc + 1)
    end
end

max = 0
for i in 1 .. 1_000_000
    t = collatzSequenceLen(i)
    if t > max
        max = t
    end
end

puts max
