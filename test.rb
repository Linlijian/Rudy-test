# encoding: UTF-8
require 'matrix'
# m = Matrix.build(10, 10) {|row, col| rand(0..10)}
# puts m
# n = Matrix.build(3) { rand }
# puts n
# n = Matrix.empty(0, 3)
# puts n


# n=Matrix.build(100, 100) {|row, col| rand(0..10)} * Matrix.build(100, 100) {|row, col| rand(0..10)}

# a = 'ไม่ตั้งใจเรียนนะเราอะ'
a='จึงเรียนมาเพื่อทราบ'
i=1
j=1
strLength = a.length
# for i in 1..strLength
#     for j in 1..strLength
#         puts "#{i} , #{j}"
#         puts a[i,j]
#         j+=1
#     end
#     i+=1
#     j=0
# end

for i in 0..21
    puts a[i,21]
 end

