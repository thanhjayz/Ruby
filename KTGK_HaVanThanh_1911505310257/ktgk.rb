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
    def initialize(soChoNgoi, kieuDongCo)
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
        puts "so cho ngoi: #{@soChoNgoi}, kieu dong co: #{@kieuDongCo}, nhien lieu: #{@nhienLieu}, so tui khi: #{@soTuiKhi}, ngay dang kiem: #{@nay dang kiem}"
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


end





# congNhan_257 = CongNhan.new("Van Thanh 1 257", 21, "Nam", "Da Nang", 1)
# kySu_257 = KySu.new("Van Thanh 2 257", 21, "Nam", "Hue", "cong nghe thong tin")
# nhanVien_257 = NhanVien.new("Van Thanh 3 257", 21, "Nam", "Quang Nam", "Lap trinh vien")

# listNhanVien = Array.new
# listNhanVien << congNhan_257
# listNhanVien << kySu_257
# listNhanVien << nhanVien_257
# listNhanVien << CongNhan.new("Van Thanh 4 257", 21, "Nam", "Da Nang", 1)
# puts "nhap ten can bo can tim: "
# ten = gets.chomp

# listNhanVien.each {
#     |nhanVien|
#     if nhanVien.ten == ten
#         puts "nhan vien can tim: "
#         puts nhanVien.to_s
#     end
# }
# puts "danh sach list can bo: "
# puts listNhanVien
