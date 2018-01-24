#encoding utf-8 
require_relative 'THTokenizer'

s="จึงเรียนมาเพื่อทราบ"
s1="ไม่รู้"
s2="หรอยจัง"
s3="พอตัดคำยาวมักหลอกตา"
s4="ไม่มีคำว่าผิดสำหรับคนพึ่งเริ่ม"

test = THCuster.new(s)
puts test.THTokenizer
puts test.getTHTokenizer

test = THCuster.new(s1)
puts test.THTokenizer
puts test.getTHTokenizer

test = THCuster.new(s2)
puts test.THTokenizer
puts test.getTHTokenizer

test = THCuster.new(s3)
puts test.THTokenizer
puts test.getTHTokenizer

test = THCuster.new(s4)
puts test.THTokenizer
puts test.getTHTokenizer

#if you want to encoding go to http://tpcg.io/WWTwL8

