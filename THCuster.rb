class THCuster
    def initialize(str)
        @str = str
        @vowels =  ['ะ','า','ิ','ี','ึ','ื','ุ','ู','ะ','เ','แ','โ','ใ','ไ','ๆ','ำ','ๅ','ั','่','๋','้',' ็','๊'] 
        @nstr = []
    end

    def THConvert
         i,j,key = 0,0,0
         while i <= @str.length do
             while j < @vowels.length do
                  if @str[i]==@vowels[j]
                      @nstr.push(0)
                      key=1
                      break
                  end
                  j+=1
              end
              if key==0
                  @nstr.push(1)
              end
             i+=1
             j,key = 0,0
         end
         return @nstr
     end

     def THTokenizer
        result = []
        thaitoken = THConvert()
        i = 0
        chevk,j = 0,0
        while i<thaitoken.length do
            if thaitoken[i]==1&&thaitoken[i+1]==1
                 result.push(@str[i])
            elsif thaitoken[i]==1&&thaitoken[i+1]==0
                if thaitoken[i+2]==0
                    chevk=i
                    while j<@vowels.length do
                        if @str[chevk+2]==@vowels[i]
                            chevk=1
                        end
                        j+=1
                    end
                    if chevk
                         result.push(@str[i..i+1])
                        i+=1
                    else
                         result.push(@str[i..i+2])
                         result.push(@str[i+3])
                        i+=3
                    end
                else
                     result.push(@str[i..i+1])
                     result.push(@str[i+2])
                    i+=2
                end
            elsif thaitoken[i]==0&&thaitoken[i+2]==0
                if thaitoken[i+3]==1 #0101
                    if thaitoken[i+4]==1
                         result.push(@str[i..i+3])
                        i+=3
                    else
                         result.push(@str[i..i+1])
                        i+=1
                    end
                elsif thaitoken[i+3]==0 #0100
                    if thaitoken[i+4]==0
                         result.push(@str[i..i+4])
                        i+=4
                    else
                         result.push(@str[i..i+4])
                        i+=4
                    end
                end
            elsif thaitoken[i+1]==nil
                 result.push(@str[i])
            end
                i+=1
                j=0
        end
        return result
    end

    def getTHTokenizer
        i=0
        a = THTokenizer()
        b = []
        while i<a.length do
            if a[i]!=nil
            b[i]=a[i]
            end
        i+=1
        end
        return b.to_s
    end
end

s="จึงเรียนมาเพื่อทราบ"
test = THCuster.new(s)
puts test.THConvert
puts test.getTHTokenizer
