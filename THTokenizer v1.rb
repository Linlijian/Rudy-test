vowels =  ['ะ','า','ิ','ี','ึ','ื','ุ','ู','ะ','เ','แ','โ','ใ','ไ','ๆ','ำ','ๅ','ั','่','๋','้',' ็','๊']
str='ไม่เข้าใจ'
thaitoken = [0,1,0,0,1,0,0,0,1]
        result = []
        i = 0
        j = 0
        puts thaitoken [1]==1
        chevk = 0
        while i<thaitoken.length do
            
          if thaitoken[i] == 1 && thaitoken[i+1] == 1
              puts thaitoken[i]
              puts "===if thaitoken[i] == 1 && thaitoken[i+1] == 1===#{i}======"
            elsif thaitoken[i] == 1 && thaitoken[i+1] == 0
                if thaitoken[i+2] == 0
                    if thaitoken[i+2] == vowels
                         puts thaitoken[i]
                        puts "==if thaitoken[i+2] == vowels====#{i}======"
                        result.push(str[i..i+3])
                        i+=3
                    else
                         puts thaitoken[i]
                        puts "===else=if thaitoken[i+2] == vowels==#{i}======"
                        result.push(str[i..i+2])
                        result.push(str[i])
                        i+=3
                    end
                else
                    puts thaitoken[i]
                        puts "== if thaitoken[i+2] ==else 0====#{i}======"
                    result.push(@str[i..i+2])
                    i+=2
                end
            elsif thaitoken[i] == 0 && thaitoken[i+2] == 0
                puts thaitoken[i]
                        puts "=elsif thaitoken[i] == 0 && thaitoken[i+2] == 0=====#{i}======"
                j = i+2
            while thaitoken[j] != 1 do
                
                    j+=1
                end
                j += 1
                i = j
                puts 'j --'
                puts j
                if thaitoken[j] == 1
                    result.push(str[i])
                    result.push(str[i+1])
                    result.push(str[i+2])
                    result.push(str[i+3])
                    i+=4
                end
            end #if1
            puts thaitoken[i]
                        puts "=== end #if1===#{i}======"
          chevk = i+1
            if chevk == nil
                result.push(@str[i])
                i+=1
            end
           puts thaitoken[i]
                        puts "=== if chevk == nil===#{i}======"
        end #while
        
        puts result