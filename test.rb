
require 'matrix'
# m = Matrix.build(10, 10) {|row, col| rand(0..10)}
# puts m
# n = Matrix.build(3) { rand }
# puts n
# n = Matrix.empty(0, 3)
# puts n


# n=Matrix.build(100, 100) {|row, col| rand(0..10)} * Matrix.build(100, 100) {|row, col| rand(0..10)}

# # a = 'ไม่ตั้งใจเรียนนะเราอะ'
#   a='จึงเรียนมาเพื่อทราบ'.split(//)
#   nstr =[]
# #  puts a='จึงเรียนมาเพื่อทราบ' + "asd".slice!(2)
# puts  nstr


# strLength = a.length
# for i in 1..strLength
#     for j in 1..strLength
#         puts "#{i} , #{j}"
#         puts a[i,j]
#         j+=1
#     end
#     i+=1
#     j=0
# end

# for i in 0..21
#     puts a[i,21]
#  end

# puts "เพื่อ".length



# shot = ['ะ','า','ุ','ู','ิ','ี','์','ึ','เ','แ','อ','ใ','ไ','ำ','ๅ','โ','่','๋','ั','๊','็','์','ๆ']
# long = ['่','๋','ั','๊','็','์','ๆ']


# i,j,k =0,0,0
# str = "เพื่อ"
# custer = []
# for i in 0..str.length do
#     for j in 0..shot.length do
#         if str[i] == shot[j]
#              puts shot[j]
#              puts i,j
#              custer[k] = str[i+1]
#              k+=1
#         end
#         j+=1
#     end
#     i+=1
# end

# puts custer.to_s

vowels = ['ะ','า','ุ','ู','ิ','ี','์','ึ','เ','แ','อ','ใ','ไ','ำ','ๅ','โ','ๆ']
str = "เอ"
i=0
while i < str.length do
if str != vowels
     puts ('T')
end
i+=1
end

def test
    i = 100
    j = 200
    k = 300
 return i, j, k
 end
 var = test
 puts var