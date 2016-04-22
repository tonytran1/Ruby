# Filename: Triangle.rb
# Author: Tony Tran

# Triangle class containing three sides.
# Contains functions for testing if valid triangle
# and computing perimeter and area.
class Triangle
    
    # Constructor / Initializer 
    def initialize(sideA, sideB, sideC)
        @valid = false
        @sideA = sideA
        @sideB = sideB
        @sideC = sideC
    end
    
    # Accessor methods for all three sides
    attr_accessor :sideA, :sideB, :sideC
    
    # (1) equailateral is defined as a triangle with all three equal sides.
    # (2) isoceles is defined as a triangle with at least two equal sides.
    # (3) scalene is defined as a triangle with three differing sides.
    # (4) right is defined as a triangle that satisfies the pythagorean theorem.
    # (5) not a triangle is defined as not passing the triangle inequality theorem.
    def test
        @valid = true 
        puts ("This triangle is:")
        if @sideA + @sideB <= @sideC || @sideA + @sideC <= @sideB || @sideC + @sideB <= @sideA
            puts ("(5) not a triangle") 
            @valid = false
        end
        if (@sideA == @sideB) && (@sideB == @sideC) && (@sideA == @sideC) && @valid
            puts ("(1) equilateral")
            @valid = true
        end
        if (@sideA == @sideB) || (@sideB == @sideC) && @valid
            puts ("(2) isosceles") 
            @valid = true
        end
        if (@sideA != @sideB) && (@sideB != @sideC) && (@sideA != @sideC) && @valid
            puts ("(3) scalene") 
            @valid = true
        end
        # Rounding to 10 decimal places to avoid float inaccuracies
        if (@sideA**2 + @sideB**2 == (@sideC**2).round(10)) || (@sideA**2 + @sideC**2 == (@sideB**2).round(10)) || (@sideB**2 + @sideC**2 == (@sideA**2).round(10)) && @valid
            puts ("(4) right") 
            @valid = true
        end
        @valid
    end
    
    # Calculating the perimeter of a valid triangle by adding all sides. 
    def perimeter
        if @valid
            perimeter = @sideA + @sideB + sideC
        elsif @valid == false
            puts ("This is not a valid triangle.")   
        else
            puts ("Please test the triangle by using the test function")
        end
    end
        
    # Using Heron's formula, we can calculate the area of any valid triangle.
    def area
        if @valid
            sub_perimeter = self.perimeter * 0.5
            area = Math.sqrt(sub_perimeter * (sub_perimeter - @sideA) * 
                  (sub_perimeter - @sideB) * (sub_perimeter - @sideC))
        elsif @valid == false
            puts ("This is not a valid triangle.")   
        else
            puts ("Please test the triangle by using the test function")
        end
    end
end

=begin
                Output Using irb
                ----------------
    irb(main):002:0> triangle = Triangle.new(2,2,2)
    => #<Triangle:0x0000000361d548 @valid=false, @sideA=2, @sideB=2, @sideC=2>
    irb(main):003:0> triangle.test
    This triangle is:
    (1) equilateral
    (2) isosceles
    => true
    irb(main):004:0> triangle.perimeter
    => 6
    irb(main):005:0> triangle.area
    => 1.7320508075688772

    irb(main):008:0> triangle = Triangle.new(2,2,3)
    => #<Triangle:0x00000002c436a8 @valid=false, @sideA=2, @sideB=2, @sideC=3>
    irb(main):009:0> triangle.test
    This triangle is:
    (2) isosceles
    => true
    irb(main):008:0> triangle.perimeter
    => 7
    irb(main):007:0> triangle.area
    => 1.984313483298443

    irb(main):012:0> triangle = Triangle.new(4,2,3)
    => #<Triangle:0x000000036e8068 @valid=false, @sideA=4, @sideB=2, @sideC=3>
    irb(main):013:0> triangle.test
    This triangle is:
    (3) scalene
    => true
    irb(main):011:0> triangle.perimeter
    => 9
    irb(main):012:0> triangle.area
    => 2.9047375096555625

    irb(main):018:0> triangle = Triangle.new(5,12,13)
    => #<Triangle:0x000000038d7018 @valid=false, @sideA=5, @sideB=12, @sideC=13>
    irb(main):019:0> triangle.test
    This triangle is:
    (3) scalene
    (4) right
    => true
    irb(main):016:0> triangle.perimeter
    => 30
    irb(main):015:0> triangle.area
    => 30.0

    irb(main):002:0> triangle = Triangle.new(3,3,Math.sqrt(18))
    => #<Triangle:0x00000002f8c9e0 @valid=false, @sideA=3, @sideB=3, @sideC=4.242640687119285>
    irb(main):003:0> triangle.test
    This triangle is:
    (2) isosceles
    (4) right
    => true
    irb(main):020:0> triangle.perimeter
    => 10.242640687119284
    irb(main):021:0> triangle.area
    => 4.499999999999997

    irb(main):002:0> triangle = Triangle.new(3,5,8)
    => #<Triangle:0x00000003198ec8 @valid=false, @sideA=3, @sideB=5, @sideC=8>
    irb(main):003:0> triangle.test
    This triangle is:
    (5) not a triangle
    => false
    irb(main):004:0> triangle.perimeter
    This is not a valid triangle.
    => nil
    irb(main):005:0> triangle.area
    This is not a valid triangle.
    => nil

=end