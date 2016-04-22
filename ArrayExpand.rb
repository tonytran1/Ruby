# Filename: ArrayExpand.rb
# Author: Tony Tran

# This array class expands the library array class. 
class Array
    # Returns true if all array elements are between amin <= a[i] <= amax
    def limited?(amin, amax)
        temp = self.dup
        i = 0
        while i < temp.length
            if (amin > temp[i] || temp[i] > amax)
                return false
            end
            i += 1
        end
        true;
    end
    
    # Returns 1 if sorted in ascending
    # Returns -1 if sorted in decending
    # Returns 0 if not sorted
    def sorted?
        if (self == self.sort)
            return 1
        elsif (self == self.sort.reverse)
            return -1
        else
            return 0
        end
    end
    
end

=begin
            Output Using irb
            ----------------
    irb(main):002:0> [1,2,3].limited?(-1,3)
    => true
    irb(main):003:0> [1,2,3].limited?(2,3)
    => false
    irb(main):004:0> [1,2,3].sorted?
    => 1
    irb(main):005:0> [3,2,1].sorted?
    => -1
    irb(main):006:0> [3,4,1].sorted?
    => 0

=end