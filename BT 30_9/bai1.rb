class CanBo
    def initialize (ten, tuoi, gioiTinh, diaChi)
        @ten = ten
        @tuoi = tuoi
        @gioiTinh = gioiTinh
        @diaChi = diaChi
    end
    attr_accessor :ten, :tuoi, :gioiTinh, :diaChi
end
class CongNhan < CanBo
    attr_accessor :bac
    def initialize(ten, tuoi, gioiTinh, diaChi, bac)
        super(ten, tuoi, gioiTinh, diaChi)  
        @bac = bac
    end
    def to_s
        puts "ten: #{@ten}, tuoi: #{@tuoi}, gioi tinh: #{@gioiTinh}, dia chi: #{@diaChi}, bac: #{@bac}"
    end
end
class KySu < CanBo
    attr_accessor :nganhDaoTao
    def initialize(ten, tuoi, gioiTinh, diaChi, nganhDaoTao)
        super(ten, tuoi, gioiTinh, diaChi)  
        @nganhDaoTao = nganhDaoTao
    end
    def to_s
        puts "ten: #{@ten}, tuoi: #{@tuoi}, gioi tinh: #{@gioiTinh}, dia chi: #{@diaChi}, nganh dao tao: #{@nganhDaoTao}"
    end
end
class NhanVien < CanBo
    attr_accessor :congViec
    def initialize(ten, tuoi, gioiTinh, diaChi, congViec)
        super(ten, tuoi, gioiTinh, diaChi)  
        @congViec = congViec
    end
    def to_s
        puts "ten: #{@ten}, tuoi: #{@tuoi}, gioi tinh: #{@gioiTinh}, dia chi: #{@diaChi}, cong viec: #{@congViec}"
    end
end


congNhan_257 = CongNhan.new("Van Thanh 1 257", 21, "Nam", "Da Nang", 1)
kySu_257 = KySu.new("Van Thanh 2 257", 21, "Nam", "Hue", "cong nghe thong tin")
nhanVien_257 = NhanVien.new("Van Thanh 3 257", 21, "Nam", "Quang Nam", "Lap trinh vien")

listNhanVien = Array.new
listNhanVien << congNhan_257
listNhanVien << kySu_257
listNhanVien << nhanVien_257
listNhanVien << CongNhan.new("Van Thanh 4 257", 21, "Nam", "Da Nang", 1)
puts "nhap ten can bo can tim: "
ten = gets.chomp

listNhanVien.each {
    |nhanVien|
    if nhanVien.ten == ten
        puts "nhan vien can tim: "
        puts nhanVien.to_s
    end
}
puts "danh sach list can bo: "
puts listNhanVien
