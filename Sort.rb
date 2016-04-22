# Filename: Sort.rb
# Author: Tony Tran

# This sorts any inputed array in ascending order without changing 
# the original array using the Bubble Sort Algorithm.
def sort(v)
    temp = v.dup
    swap = true
    skipLast = 1
    while swap && (skipLast <= v.length)
        i = 0
        swap = false
        while i < (v.length - skipLast)
            if temp[i] > temp[i + 1] then
                temp[i], temp[i + 1] = temp[i + 1], temp[i]
                swap = true
            end
            i += 1
        end
        skipLast += 1
    end
    temp
end

=begin
                    Output Using irb
                    ----------------
    irb(main):004:0> sort([1,2,5,6,1,2,3,4,5,1,1,2,3,3,3,5])
    => [1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 5, 5, 5, 6]
    irb(main):005:0> sort([1,2,3])
    => [1, 2, 3]
    irb(main):006:0> sort([3,2,1])
    => [1, 2, 3]

=end