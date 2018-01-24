require 'matrix'
class Muti
    def initialize
        @x = (1..20000000000).map{|n| rand(10).to_s}.join
        @y = (1..20000000000).map{|n| rand(10).to_s}.join
        @z = @x + @y
    end

    def saveMuti
        File.open("file.txt", 'w') { |file| file.write(@z.to_i) }
    end

    def TrueorFalse
        if @z==@x+@y
            puts("True")
        else
            puts("False")
        end
    end

    def matrixMuti
        m1 = Matrix.build(100000000,100000000) {|row, col| rand(1..10).to_s} 
        m2 = Matrix.build(100000000,100000000) {|row, col| rand(1..10).to_s}
        m = m1+m2
        File.open("file.txt", 'w') { |file| file.write(m.to_i) }
    end
end

a=Muti.new
a.saveMuti
a.TrueorFalse
a.matrixMuti
