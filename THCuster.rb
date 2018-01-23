class THCuster
    vowels = ['ะ','า','ุ','ู','ิ','ี','์','ึ','เ','แ','อ','ใ','ไ','ำ','ๅ','โ','ๆ']
    up = ['่','๋','ั','๊','็','์']

    def initialize(str)
        @str = str
    end

    def THConvert
        nstr = []
        i = 0
        while i < @str.length do
            if @str != vowels
                nstr.push(1)
            else
                nstr.push(0)
            end
            i+=1
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
                    if thaitoken[i+2] == vowels
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
                    result.push(@str[i])
                    result.push(@str[i+1])
                    result.push(@str[i+2])
                    result.push(@str[i+3])
                    i+=4
                end
            end
            if i+1 = nil
                result.push(@str[i])
                i+=1
            end
        end
    end

    def oneConvert
        oneStr = THConvert
        if oneStr
        end
    end

