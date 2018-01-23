class THCuster
    vowels =  ['ะ','า','ิ','ี','ึ','ื','ุ','ู','ะ','เ','แ','โ','ใ','ไ','ๆ','ำ','ๅ','ั','่','๋','้',' ็','๊']
    # up = ['่','๋','ั','๊','็','์']
    up = ['่','้','๊','๋']

    def initialize(str)
        @str = str
    end

    def THConvert
        nstr = []
        i,j,key = 0,0,0
        while i < str.length do
            puts str[i]
            while j <  vowels.length do
                 if str[i]==vowels[j]
                     nstr.push(0)
                     k=1
                     break
                 end
                 j+=1
             end
             if k==0
                 nstr.push(1)
             end
            i+=1
            j,k = 0,0
        end
        return nstr
    end

    def THTokenizer
        thaitoken = THConvert
        result = []
        i = 0
        while i<thaitoken.length do
            if thaitoken[i] == 1 && thaitoken[i+1] == 1 
                result.push(@str[i])
                i+=1
            elsif thaitoken[i] == 1 && thaitoken[i+1] == 0
                if thaitoken[i+2] == 0
                    if thaitoken[i+2] == up #vowels
                        result.push(@str[i..i+3])
                        i+=3
                    else
                        result.push(@str[i..i+2])
                        result.push(@str[i])
                        i+=3
                    end
                else
                    result.push(@str[i..i+2])
                    i+=2
                end
            elsif thaitoken[i] == 0 && thaitoken[i+2] == 0
                j = i+2
                while thaitoken[j] != 1 do
                    j+=1
                end
                j += 1
                i = j
                if thaitoken[j] == 1
                    result.push(@str[i..i+4])
                    i+=4
                end
            end
            if i+1 = nil
                result.push(@str[i])
                i+=1
            end
        end
    end



end
