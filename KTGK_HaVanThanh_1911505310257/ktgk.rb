class PhuongTien
    attr_accessor :id, :hangSX, :namSX, :dongXe, :giaBan, :bienSo, :mauXe
    def initialize (id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe)
        @id = id
        @hangSX = hangSX
        @namSX = namSX
        @dongXe = dongXe
        @giaBan = giaBan
        @bienSo = bienSo
        @mauXe = mauXe
    end
    
    def InPut
        puts "nhap id: "
        @id = gets.chomp
        puts "nhap hang SX: "
        @hangSX = gets.chomp
        puts "nhap nam SX: "
        @namSX = gets.chomp
        puts "nhap dongXe: "
        @dongXe = gets.chomp
        puts "phap bien so: "
        @bienSo = gets.chomp
    end

end
class Oto < PhuongTien
    attr_accessor :soChoNgoi, :kieuDongCo, :nhienLieu, :soTuiKhi, :ngayDangKiem
    def initialize (soChoNgoi, kieuDongCo, nhienLieu, soTuiKhi, ngayDangKiem)
        super(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe)
        @soChoNgoi = soChoNgoi
        @kieuDongCo = kieuDongCo
        @nhienLieu = nhienLieu
        @soTuiKhi = soTuiKhi
        @ngayDangKiem = ngayDangKiem
    end

    def InPut   
        super
        puts "nhap so cho ngoi: "
        @soChoNgoi = gets.chomp
        puts "nhap kieu dong co: "
        @kieuDongCo = gets.chomp
        puts "nhap nhien lieu: "
        @nhienLieu = gets.chomp
        puts "nhap so tui khi: "
        @soTuiKhi = gets.chomp
        puts "phap ngay dang kiem: "
        @ngayDangKiem = gets.chomp
    end

    def to_s
        puts "id: #{@id}, hangSX: #{@hangSX}, dong xe: #{@dongXe}, gia ban: #{@giaBan}, bien so: #{@bienSo}, mau xe: #{@mauXe}"
        puts "so cho ngoi: #{@soChoNgoi}, kieu dong co: #{@kieuDongCo}, nhien lieu: #{@nhienLieu}, so tui khi: #{@soTuiKhi}
        , ngay dang kiem: #{@ngayDangKiem}"
    end
end
class XeMay < PhuongTien
    attr_accessor :congSuat, :dungTichBinhXang
    def initialize(congSuat, dungTichBinhXang)
        super(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe)
        @congSuat = congSuat
        @dungTichBinhXang = dungTichBinhXang
    end

    def InPut
        super
        puts "nhap cong suat: "
        @congSuat = gets.chomp
        puts "nhap dung tich binh xang: "
        @dungTichBinhXang = gets.chomp
    end

    def to_s
        puts "id: #{@id}, hangSX: #{@hangSX}, dong xe: #{@dongXe}, gia ban: #{@giaBan}, bien so: #{@bienSo}, mau xe: #{@mauXe}"
        puts "cong suat: #{@congSuat}, dung tich binh xang: #{@dungTichBinhXang}"
    end
end
class XeTai < PhuongTien
    attr_accessor :trongTai
    def initialize(trongTai)
        super(id, hangSX, namSX, dongXe, giaBan, bienSo, mauXe)
        @trongTai = trongTai
    end

    def InPut
        super
        puts "nhap trong tai: "
        @trongTai = gets.chomp
    end

    def to_s
        puts "id: #{@id}, hangSX: #{@hangSX}, dong xe: #{@dongXe}, gia ban: #{@giaBan}, bien so: #{@bienSo}, mau xe: #{@mauXe}"
        puts "trong tai: #{@trongTai}"
    end
end

class QuanLyPhuongTien
    attr_accessor :listPhuongTien
    listPhuongTien = Array.new
    def ThemPhuongTien
        puts "nhap o to:"
        oto257  = Oto.new
        oto257.InPut
        puts "nhap xe may:"
        xeMay257 = XeMay.new
        xeMay257.InPut
        puts "nhap xe tai:"
        xeTai257 = XeTai.new
        xeTai257.InPut

        @listPhuongTien  << oto257
        @listPhuongTien  << xeMay257
        @listPhuongTien  << xeTai257
    end
        
    def XoaPhuongTien(id)
        @listPhuongTien.each { |i| danhsach.delete(i.id.equal?id)}   
    end

    def TimKiemTheoHangSX
        puts "tim kiem theo hang SX"
        puts "nhap hang SX: "
        hangSX = gets.chomp
        @listPhuongTien.each {
            |phuongTien, index|
            if phuongTien.hangSX == hangSX
                puts "phuong tien: "
                puts phuongTien.to_s
            end
        }
    end
    
    def TimKiemTheoMau
        puts "tim kiem theo mau"
        puts "nhap hang mau: "
        mau = gets.chomp
        @listPhuongTien.each {
            |phuongTien, index|
            if phuongTien.mau == mau
                puts "phuong tien: "
                puts phuongTien.to_s
            end
        }
    end

    def TimKiemTheoBienSo
        puts "tim kiem theo bien so"
        puts "nhap hang bien so: "
        bienSo = gets.chomp
        @listPhuongTien.each {
            |phuongTien, index|
            if phuongTien.bienSo == bienSo
                puts "phuong tien  #{index}: "
                puts phuongTien.to_s
            end
        }
    end

    def XuatDanhSachPhuongTien
        @listPhuongTien.each {
            |phuongTien, index|
            puts "phuong tien  #{index}: "
            puts phuongTien.to_s
        }
    
    end

end
quanLyPhuongTien = QuanLyPhuongTien.new
quanLyPhuongTien.ThemPhuongTien

quanLyPhuongTien.TimKiemTheoHangSX
# quanLyPhuongTien.TimKiemTheoBienSo
# quanLyPhuongTien.TimKiemTheoMau
puts"danh sach phuong tien:"
quanLyPhuongTien.XuatDanhSachPhuongTien