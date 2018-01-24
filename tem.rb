str ="จึงเรียนมาเพื่อทราบ"
#str="ไม่รู้"
vowels =  ['ะ','า','ิ','ี','ึ','ื','ุ','ู','ะ','เ','แ','โ','ใ','ไ','ๆ','ำ','ๅ','ั','่','๋','้',' ็','๊']

thaitoken = [1,0,1,0,1,0,1,1,1,0,0,1,0,0,1,1,1,0,1]
#thaitoken = [0,1,0,1,0,0]
result = []
i = 0
chevk,j = 0,0
while i<thaitoken.length do
    puts "i == #{i}"
    if thaitoken[i]==1&&thaitoken[i+1]==1
        puts "this thaitoken == 1&&1"
        puts result.push(str[i])
    elsif thaitoken[i]==1&&thaitoken[i+1]==0
        if thaitoken[i+2]==0
            puts "this thaitoken i+2=0"
            chevk=i
            while j<vowels.length do
                if str[chevk+2]==vowels[i]
                    chevk=1
                end
                j+=1
            end
            if chevk
                puts "this thaitoken i+2=volwes"
                puts result.push(str[i..i+1])
                i+=1
            else
                puts "else this thaitoken i+2=vowels"
                puts result.push(str[i..i+2])
                puts result.push(str[i+3])
                i+=3
            end
        else
            puts "else thaitoken i+2=0"
            puts result.push(str[i..i+1])
            puts result.push(str[i+2])
            i+=2
        end
    elsif thaitoken[i]==0&&thaitoken[i+2]==0
        if thaitoken[i+3]==1 #0101
            puts "thaitoken i+3"
            if thaitoken[i+4]==1
                puts "thaitoken1+4==1"
                puts result.push(str[i..i+3])
                i+=3
            else
                puts "else thaitokeni+4==1"
                puts result.push(str[i..i+1])
                i+=1
            end
        elsif thaitoken[i+3]==0 #0100
            puts "else thaitokeni+3==0"
            if thaitoken[i+4]==0
                puts "thaitokeni+4==0"
                puts result.push(str[i..i+4])
                i+=4
            else
                puts "else thaitokeni+4==0"
                puts result.push(str[i..i+4])
                i+=4
            end
        end
        #i+=1
    elsif thaitoken[i+1]==nil
        puts "thaitoken==nil"
        puts result.push(str[i])
    end
        i+=1
        j=0
end

puts thaitoken.length
return result









