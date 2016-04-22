# Filename: Mean.rb
# Author: Tony Tran

# This function returns the mean and standard deviation of a given
# array of values.
def mean_sigma(v)
    length = v.length.to_f
    sum = v.inject(0, :+).to_f
    mean = sum/length
    stdDev = Math.sqrt(v.collect {|x| ((x - mean)**2)}.inject(0, :+) * (1/length))
    return mean, stdDev
end

=begin
            Output Using irb
            ----------------
    irb(main):002:0> mean_sigma([5,5,5])
    => [5.0, 0.0]
    irb(main):003:0> mean_sigma([1,2,3])
    => [2.0, 0.816496580927726]

=end