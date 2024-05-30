
# one

# Loop:
# i = 0
# loop do
#   i += 1
#   puts i
#   break         
# end

# # While:
# x = 3
# while x >= 1
#   puts "Hi"
#   x = x - 1
# end

# # For:
# i = "YO"
# for a in 1..3 do
#   puts i
# end

# # Until:
# var = 7
# until var == 11 do
#   puts var * 10
#   var = var + 1
# end

# # Each:
# (0..9).each do |i|
#   puts i
# end

# # Collect:
# a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# b = a.collect { |y| (5 * y) }
# puts b

# # Times:
# 7.times do |i|
#   puts i
# end

# # Upto:
# 4.upto(7) do |n|
#   puts n
# end

# # Downto:
# 7.downto(4) do |n|
#   puts n
# end

# # Step:
# (0..60).step(10) do |i|
#   puts i
# end

# # Each_line:
# "Welcome\nto\nRailway\nPortal".each_line do |i|
#   puts i
# end

# # Map:
# array = [1, 2, 3]
# puts array.map { |n| n * 2 }

# # Collect (again):
# a = [1, 2, 3, 4]
# puts "collect a : #{a.collect { |x| x + 1 }}"

# # Select:
# c = [18, 22, 3, 3, 50, 6]
# puts "select method : #{c.select { |num| num > 10 }}"

# # Reject:
# puts "reject method : #{c.reject { |num| num > 10 }}"


# two 
# class Array
#     def limited?(amin, amax)
#       self.all? { |x| x >= amin && x <= amax }
#     end
  
#     def sorted?
#       return 0 if self.empty?
      
#       increasing = self.each_cons(2).all? { |a, b| a <= b }
#       decreasing = self.each_cons(2).all? { |a, b| a >= b }
  
#       return 1 if increasing
#       return -1 if decreasing
  
#       0
#     end
# end
  
# #   arr1 = [1, 2, 3, 4, 5]
# #   puts arr1.limited?(1, 5)  # true
  
# arr1 = [1, 2, 3, 4, 5]

# arr2 = [5, 4, 3, 2, 1]
# arr3 = [3, 2, 5, 4, 1]
# arr4 = [10, 20, 30, 40]

# puts arr1.limited?(1, 5)  
# puts arr2.limited?(1, 5) 
# puts arr3.limited?(1, 5)  
# puts arr4.limited?(10, 40) 

# puts arr1.sorted? 
# puts arr2.sorted?  
# puts arr3.sorted?  
# puts arr4.sorted?  


# third
# class Triangle
#     attr_accessor :a, :b, :c 
#     def initialize(a, b, c)
#       @a = a
#       @b = b
#       @c = c
#     end
  
#     def perimeter
#       return @a + @b + @c
#     end
  
#     def area
#       s = self.perimeter / 2.0
#       Math.sqrt(s * (s - @a) * (s - @b) * (s - @c))
#     end
  
#     def test
#       sides = [@a, @b, @c].sort
#       if sides[0] + sides[1] <= sides[2]
#         puts "Not a triangle"
#       elsif @a == @b && @b == @c
#         puts "Equilateral Triangle"
#       elsif @a == @b || @b == @c || @c == @a
#         puts "Isosceles Triangle"
#       elsif @a**2 + @b**2 == @c**2 || @a**2 + @c**2 == @b**2 || @b**2 + @c**2 == @a**2
#         puts "Right Triangle"
#       else
#         puts "Scalene Triangle"
#       end
#     end
# end

# # Create a triangle
# triangle = Triangle.new(3, 4, 5)

# # Test the triangle type
# triangle.test

# # Compute perimeter and area
# puts "Perimeter: #{triangle.perimeter}"
# puts "Area: #{triangle.area}"


# fourth
class Sphere
    attr_accessor :radius 
    def initialize(radius)
      @radius = radius
    end
  
    def area
      4 * Math::PI * @radius**2
    end
  
    def volume
      (4.0 / 3.0) * Math::PI * @radius**3
    end
end 
  class Ball < Sphere
    attr_accessor :color
  
    def initialize(radius, color)
      super(radius)
      @color = color
    end
  end
  
  class MyBall < Ball
    attr_accessor :owner
  
    def initialize(radius, color, owner)
      super(radius, color)
      @owner = owner
    end
  
    def show
      puts "Owner: #{@owner}"
      puts "Color: #{@color}"
      puts "Radius: #{@radius}"
      puts "Surface Area: #{area}"
      puts "Volume: #{volume}"
    end
end

my_ball = MyBall.new(5, "Red", "John")
my_ball.show
