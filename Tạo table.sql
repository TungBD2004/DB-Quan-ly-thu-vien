create database QLTV

-- Bảng độc giả
CREATE TABLE DocGia (
    MaDocGia VARCHAR(20) PRIMARY KEY,
    HoTen NVARCHAR(100),
    GioiTinh NVARCHAR(10),
    NgaySinh DATE,
    DiaChi NVARCHAR(200),
    SoDienThoai VARCHAR(15),
    TenLoaiThanhVien NVARCHAR(50),
    HSDThanhVien DATE,
    NgayDangKy DATE,
    Email VARCHAR(100)
);
-- Bảng Thủ Thư
CREATE TABLE ThuThu (
    MaThuThu VARCHAR(20) PRIMARY KEY,
    HoTen NVARCHAR(100),
    GioiTinh NVARCHAR(10),
    DiaChi NVARCHAR(200),
    NgaySinh DATE,
    SoDienThoai VARCHAR(15),
    Email NVARCHAR(100)
);


-- Bảng Nhà Xuất Bản
CREATE TABLE NhaXuatBan (
    MaNhaXuatBan VARCHAR(20) PRIMARY KEY,
    Ten NVARCHAR(100),
    Email VARCHAR(100),
    DiaChi NVARCHAR(200)
);

-- Bảng Sách
CREATE TABLE Sach (
    MaSach VARCHAR(20) PRIMARY KEY,
    TenSach NVARCHAR(200),
    SoLuong INT,
    MaNhaXuatBan VARCHAR(20),
    FOREIGN KEY (MaNhaXuatBan) REFERENCES NhaXuatBan(MaNhaXuatBan)
);

-- Bảng Phiếu
CREATE TABLE Phieu (
    MaPhieu VARCHAR(20),
    MaDocGia VARCHAR(20),
	MaThuThu Varchar(20),
	primary key(MaPhieu),
    FOREIGN KEY (MaDocGia) REFERENCES DocGia(MaDocGia),
	FOREIGN KEY (MaThuThu) REFERENCES ThuThu(MaThuThu)
);
CREATE TABLE ChiTietPhieu (
    MaPhieu VARCHAR(20),
	MaSach Varchar(20),
	SoLuong int,
	primary key(MaPhieu,MaSach),
    FOREIGN KEY (MaPhieu) REFERENCES Phieu(MaPhieu),
	FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);

-- Bảng Phiếu Mượn
CREATE TABLE PhieuMuon (
    MaPhieuMuon VARCHAR(20),
    NgayMuon DATE,
    NgayHetHan DATE,
    PRIMARY KEY (MaPhieuMuon),
    FOREIGN KEY (MaPhieuMuon) REFERENCES Phieu(MaPhieu)  
);
-- Bảng Phiếu Trả
CREATE TABLE PhieuTra (
    MaPhieuTra VARCHAR(20),
    NgayTra DATE,
    PRIMARY KEY (MaPhieuTra),
    FOREIGN KEY (MaPhieuTra) REFERENCES Phieu(MaPhieu)
);


-- Bảng Lỗi
CREATE TABLE DanhSachLoi (
    MaLoi VARCHAR(20) PRIMARY KEY,
    TenLoi NVARCHAR(100),
    MucPhat DECIMAL(10, 2)
);

--Bảng Phiếu Lỗi
CREATE TABLE PhieuLoi (
    MaPhieuLoi VARCHAR(20),
    MaDocGia VARCHAR(20),
	Ngay date,
	Primary key (MaPhieuLoi),
	FOREIGN KEY (MaDocGia) REFERENCES DocGia(MaDocGia),
);
-- Bảng QuanLyPhieuLoi
Create table QuanLyPhieuLoi(
	MaThuThu VarChar(20),
	MaPhieuLoi VARCHAR(20),
	Primary key (MaPhieuLoi,MaThuThu),
	FOREIGN KEY (MaThuThu) REFERENCES ThuThu(MaThuThu),
	FOREIGN KEY (MaPhieuLoi) REFERENCES PhieuLoi(MaPhieuLoi)
)
-- Bảng CTPhieuLoi
CREATE TABLE CTPhieuLoi (
    MaPhieuLoi VARCHAR(20),
    MaLoi VARCHAR(20),
	Primary key (MaPhieuLoi,MaLoi),
	FOREIGN KEY (MaPhieuLoi) REFERENCES PhieuLoi(MaPhieuLoi),
	FOREIGN KEY (MaLoi) REFERENCES DanhSachLoi(MaLoi)
);
-- Bảng Khoản Thu Hằng Ngày
CREATE TABLE KhoanThuHangNgay (
    Ngay DATE PRIMARY KEY,
    SoTien DECIMAL(15, 2)
);

-- Bảng Khoản Chi Hằng Ngày
CREATE TABLE KhoanChiHangNgay (
    Ngay DATE PRIMARY KEY,
    SoTien DECIMAL(15, 2)
);

-- Bảng Doanh Thu
CREATE TABLE DoanhThu (
    Ngay DATE PRIMARY KEY,
    TongThu DECIMAL(15, 2),
    TongChi DECIMAL(15, 2),
    FOREIGN KEY (Ngay) REFERENCES KhoanThuHangNgay(Ngay),
    FOREIGN KEY (Ngay) REFERENCES KhoanChiHangNgay(Ngay)
);

-- Bảng Tài Sản
CREATE TABLE TaiSan (
    MaTaiSan VARCHAR(20) PRIMARY KEY,
    Ten NVARCHAR(100),
    NgayMua DATE,
    SoLuong INT
);
-- Bảng Quản Lý Sách
CREATE TABLE QuanLySach (
    MaThuThu VARCHAR(20),
    MaSach VARCHAR(20),
    PRIMARY KEY (MaThuThu, MaSach),
    FOREIGN KEY (MaThuThu) REFERENCES ThuThu(MaThuThu),
    FOREIGN KEY (MaSach) REFERENCES Sach(MaSach)
);
-- Bảng Quản Lý Tài Sản
CREATE TABLE QuanLyTaiSan (
    MaThuThu VARCHAR(20),
    MaTaiSan VARCHAR(20),
    PRIMARY KEY (MaThuThu, MaTaiSan),
    FOREIGN KEY (MaThuThu) REFERENCES ThuThu(MaThuThu),
    FOREIGN KEY (MaTaiSan) REFERENCES TaiSan(MaTaiSan)
);

-- Bảng Quản Lý Doanh Thu
CREATE TABLE QuanLyDoanhThu (
    MaThuThu VARCHAR(20),
    Ngay DATE,
    PRIMARY KEY (MaThuThu, Ngay),
    FOREIGN KEY (MaThuThu) REFERENCES ThuThu(MaThuThu),
    FOREIGN KEY (Ngay) REFERENCES DoanhThu(Ngay)
);


-- Bảng Thân Nhân Thủ Thư
CREATE TABLE ThanNhanThuThu (
    MaThuThu VARCHAR(20),
	MaThanNhan VarChar(20),
    HoTen NVARCHAR(100),
    PRIMARY KEY (MaThuThu,MaThanNhan),
    FOREIGN KEY (MaThuThu) REFERENCES ThuThu(MaThuThu)
);

