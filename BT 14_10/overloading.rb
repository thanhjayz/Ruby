class PhanSo
    def cong
    end
    def tru
    end
    def nhan
    end
    def chia
    end

    def cong(tu1, mau1, tu2, mau2)
        y = mau1 * mau2
        x = tu1*mau2 + tu2*mau1
        puts "tong = #{x} / #{y}"
    end
    def tru(tu1, mau1, tu2, mau2)
        y = mau1 * mau2
        x= tu1*mau2 - tu2*mau1
        puts "hieu = #{x} / #{y}"
    end
    def nhan(tu1, mau1, tu2, mau2)
        x= tu1*tu2
        y = mau1 * mau2
        puts "tich = #{x} / #{y}"
    end
    def chia(tu1, mau1, tu2, mau2)
        x= tu1*mau2
        y = mau1*tu2
        puts "thuong = #{x} / #{y}"
    end
end
puts 'nhap tu1: '
tu1 = gets.chomp.to_i
puts 'nhap mau1: '
mau1 = gets.chomp.to_i
puts 'nhap tu2: '
tu2 = gets.chomp.to_i
puts 'nhap mau2: '
mau2 = gets.chomp.to_i

phanso257 = PhanSo.new
phanso257.cong(tu1, mau1, tu2, mau2)
phanso257.tru(tu1, mau1, tu2, mau2)
phanso257.nhan(tu1, mau1, tu2, mau2)
phanso257.chia(tu1, mau1, tu2, mau2)