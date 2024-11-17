-- Dữ liệu cho bảng DocGia
INSERT INTO DocGia (MaDocGia, HoTen, GioiTinh, NgaySinh, DiaChi, SoDienThoai, TenLoaiThanhVien, HSDThanhVien, NgayDangKy, Email)
VALUES 
('DG001', N'Nguyễn Văn An', N'Nam', '1990-05-10', N'123 Đường ABC, HN', '0905123456', N'VIP', '2025-05-10', '2023-05-10', 'an.nguyen@example.com'),
('DG002', N'Trần Thị Bích', N'Nữ', '1985-11-21', N'456 Đường XYZ, TP.HCM', '0912233445', N'Thường', '2024-11-21', '2023-11-21', 'bich.tran@example.com'),
('DG003', N'Lê Minh Hoàng', N'Nam', '1995-03-15', N'789 Đường D, HN', '0933445566', N'Thường', '2024-03-15', '2023-03-15', 'hoang.le@example.com'),
('DG004', N'Nguyễn Thị Mai', N'Nữ', '1992-08-30', N'101 Đường E, Đà Nẵng', '0944556677', N'VIP', '2025-08-30', '2023-08-30', 'mai.nguyen@example.com'),
('DG005', N'Trần Quốc Dũng', N'Nam', '1988-12-05', N'202 Đường F, HCM', '0955667788', N'Thường', '2024-12-05', '2023-12-05', 'dung.tran@example.com'),
('DG006', N'Bùi Duy Tùng', N'Nam', '2004-11-02', N'Mộc Châu, Sơn La', '0362605011', N'Thường', '2024-03-15', '2023-03-15', 'tung.le@example.com'),
('DG007', N'Nguyễn Thị Mai', N'Nữ', '1992-08-30', N'101 Đường E, Đà Nẵng', '0944556677', N'VIP', '2025-08-30', '2023-08-30', 'mai.nguyen@example.com'),
('DG008', N'Phạm Huy Hùng', N'Nam', '2004-01-07', N'Nam Định', '0955667788', N'Thường', '2024-12-05', '2023-12-05', 'hung.tran@example.com'),
('DG009', N'Vũ Thế Vinh', N'Nam', '2004-07-01', N'Thái Bình', '0955667788', N'Thường', '2024-12-05', '2023-12-05', 'hung.tran@example.com');

-- Dữ liệu cho bảng ThuThu
INSERT INTO ThuThu (MaThuThu, HoTen, GioiTinh, DiaChi, NgaySinh, SoDienThoai, Email)
VALUES 
('TT001', N'Lê Văn Cường', N'Nam', N'111 Đường Tư, HN', '1980-01-01', '0922333445', 'cuong.le@example.com'),
('TT002', N'Nguyễn Thị Lan', N'Nữ', N'222 Đường Tư, HN', '1992-02-02', '0933445566', 'lan.nguyen@example.com'),
('TT003', N'Trần Văn Biên', N'Nam', N'333 Đường Tư, HN', '1985-03-03', '0944556677', 'vanb.tran@example.com'),
('TT004', N'Nguyễn Văn Thái', N'Nam', N'444 Đường Tư, HN', '1988-04-04', '0955667788', 'vant.nguyen@example.com'),
('TT005', N'Lê Thị Hồng', N'Nữ', N'555 Đường Tư, HN', '1990-05-05', '0966778899', 'h.le@example.com');

-- Dữ liệu cho bảng NhaXuatBan
INSERT INTO NhaXuatBan (MaNhaXuatBan, Ten, Email, DiaChi)
VALUES 
('NXB001', N'Nhà Xuất Bản Văn Học', 'nxbvanhoc@example.com', N'789 Đường Văn, HN'),
('NXB002', N'Nhà Xuất Bản Khoa Học', 'nxbkhoahoc@example.com', N'321 Đường Khoa, HN'),
('NXB003', N'Nhà Xuất Bản Giáo Dục', 'nxbgiaduc@example.com', N'654 Đường Giáo, HN'),
('NXB004', N'Nhà Xuất Bản Trẻ', 'nxbtre@example.com', N'987 Đường Trẻ, HN'),
('NXB005', N'Nhà Xuất Bản Sách Hay', 'nxb sachhay@example.com', N'159 Đường Hay, HCM');

-- Dữ liệu cho bảng Sach
INSERT INTO Sach (MaSach, TenSach, SoLuong, MaNhaXuatBan)
VALUES 
('S001', N'HỌC TẬP CŨNG CẦN CHIẾN LƯỢC  ', 100, 'NXB001'),
('S002', N'SỨC MẠNH CỦA HIỆN TẠI', 50, 'NXB002'),
('S003', N'TÔI TÀI GIỎI, BẠN CŨNG THẾ!', 75, 'NXB001'),
('S004', N'CẨM NANG CON GÁI- CẨM NANG CON TRAI', 200, 'NXB002'),
('S005', N'Đắc nhân tâm', 30, 'NXB003'),
('S006', N'Sức Mạnh Của Thói Quen', 100, 'NXB004'),
('S007', N'Ý Chí Sắt Đá', 50, 'NXB003'),
('S008', N'Tôi muốn được yêu', 75, 'NXB005'),
('S009', N'Lên gác rút thang', 200, 'NXB002'),
('S010', N'Ai che lưng cho bạn', 30, 'NXB003'),
('S011', N'Chiến tranh tiền tệ	 ', 100, 'NXB001'),
('S012', N'Tiền không mọc trên cây	', 50, 'NXB002'),
('S013', N'Sự hội tụ kế tiếp', 75, 'NXB001'),
('S014', N'Cuộc đào thoát vĩ đại', 200, 'NXB002'),
('S015', N'Lựa chọn công', 30, 'NXB003'),
('S016', N'Bán khống', 100, 'NXB004'),
('S017', N'The Ugly Duckling', 50, 'NXB003'),
('S018', N'Thời thơ ấu của các tổng thống Mỹ', 75, 'NXB005'),
('S019', N'Bí mật ngôn ngữ cơ thể', 200, 'NXB002'),
('S020', N'Cafe cùng Tony	', 30, 'NXB003');

-- Dữ liệu cho bảng Phieu
INSERT INTO Phieu(MaPhieu, MaDocGia,MaThuThu)
VALUES 
('P001', 'DG001', 'TT001'),
('P002', 'DG001' , 'TT002'),
('P003', 'DG003' , 'TT005'),
('P004', 'DG003', 'TT004'),
('P005', 'DG004', 'TT003'),
('P006', 'DG004', 'TT002'),
('P007', 'DG007', 'TT001'),
('P008', 'DG007', 'TT005'),
('P009', 'DG002', 'TT003'),
('P010', 'DG002', 'TT004'),
('P011', 'DG009', 'TT002'),
('P012', 'DG009', 'TT001');

-- Dữ liệu cho bảng ChiTietPhieu
INSERT INTO ChiTietPhieu (MaPhieu, MaSach, SoLuong)
VALUES 
('P001', 'S001', 1 ),
('P001', 'S002', 3 ),
('P003', 'S001', 5 ),
('P003', 'S003', 7),
('P005', 'S010', 3),
('P005', 'S007', 2),
('P007', 'S002', 5),
('P007', 'S003', 2),
('P009', 'S002', 3),
('P011', 'S006', 10),
('P002', 'S001', 1),
('P002', 'S002', 3),
('P004', 'S001', 5),
('P004', 'S003', 7),
('P006', 'S010', 3),
('P006', 'S007', 2),
('P008', 'S002', 5),
('P008', 'S003', 2),
('P010', 'S002', 3),
('P012', 'S006', 10);

-- Dữ liệu cho bảng PhieuMuon
INSERT INTO PhieuMuon (MaPhieuMuon, NgayMuon, NgayHetHan)
VALUES 
('P001',  '2024-10-01', '2024-10-11'),
('P003', '2024-10-03', '2024-10-13'),
('P005', '2024-10-05', '2024-10-15'),
('P007', '2024-10-07', '2024-10-17'),
('P009', '2024-10-09', '2024-10-19'),
('P011', '2024-10-10', '2024-10-20');
-- Dữ liệu cho bảng PhieuTra
INSERT INTO PhieuTra (MaPhieuTra, NgayTra)
VALUES 
('P002', '2024-10-09'),
('P004',  '2024-10-15'),
('P006', '2024-10-11'),
('P008', '2024-10-13'),
('P010',  '2024-10-15'),
('P012', '2024-10-19');

-- Dữ liệu cho bảng Loi
INSERT INTO DanhSachLoi (MaLoi, TenLoi, MucPhat)
VALUES 
('L001', N'Mất sách', 100.00),
('L002', N'Trễ hạn', 50.00),
('L003', N'Bị hư hỏng sách', 75.00),
('L004', N'Không trả sách đúng hạn', 30.00),
('L005', N'Để sách không đúng nơi quy định', 20.00);

-- Bảng PhieuLoi
INSERT INTO PhieuLoi (MaPhieuLoi, MaDocGia, Ngay)
VALUES
('PL001', 'DG001', '2023-10-10'),
('PL002', 'DG002', '2023-10-11'),
('PL003', 'DG003', '2023-10-12'),
('PL004', 'DG004', '2023-10-13'),
('PL005', 'DG003', '2023-10-14'),
('PL006', 'DG001', '2023-10-15'),
('PL007', 'DG007', '2023-10-16'),
('PL008', 'DG002', '2023-10-17'),
('PL009', 'DG009', '2023-10-18'),
('PL010', 'DG002', '2023-10-19');

-- Bảng QuanLyPhieuLoi
INSERT INTO QuanLyPhieuLoi (MaThuThu, MaPhieuLoi)
VALUES
('TT001', 'PL001'),
('TT001', 'PL002'),
('TT001', 'PL003'),
('TT002', 'PL004'),
('TT002', 'PL005'),
('TT003', 'PL006'),
('TT001', 'PL007'),
('TT002', 'PL008'),
('TT003', 'PL009'),
('TT005', 'PL010');

-- Bảng CTPhieuLoi
INSERT INTO CTPhieuLoi (MaPhieuLoi, MaLoi)
VALUES
('PL001', 'L001'),
('PL001', 'L002'),
('PL002', 'L004'),
('PL003', 'L001'),
('PL003', 'L003'),
('PL004', 'L005'),
('PL005', 'L001'),
('PL006', 'L002'),
('PL007', 'L001'),
('PL008', 'L003'),
('PL009', 'L001'),
('PL010', 'L002');

-- Dữ liệu cho bảng KhoanThuHangNgay
INSERT INTO KhoanThuHangNgay (Ngay, SoTien)
VALUES 
('2024-10-01', 1500.00),
('2024-10-02', 2000.00),
('2024-10-03', 1200.00),
('2024-10-04', 1800.00),
('2024-10-05', 1600.00),
('2024-10-06', 1400.00),
('2024-10-07', 2100.00),
('2024-10-08', 1700.00),
('2024-10-09', 1900.00),
('2024-10-10', 1300.00),
('2024-10-11', 2200.00),
('2024-10-12', 1600.00),
('2024-10-13', 2000.00),
('2024-10-14', 1500.00),
('2024-10-15', 1800.00);


-- Dữ liệu cho bảng KhoanChiHangNgay
INSERT INTO KhoanChiHangNgay (Ngay, SoTien)
VALUES 
('2024-10-01', 800.00),
('2024-10-02', 500.00),
('2024-10-03', 600.00),
('2024-10-04', 700.00),
('2024-10-05', 900.00),
('2024-10-06', 850.00),
('2024-10-07', 400.00),
('2024-10-08', 750.00),
('2024-10-09', 650.00),
('2024-10-10', 500.00),
('2024-10-11', 950.00),
('2024-10-12', 600.00),
('2024-10-13', 700.00),
('2024-10-14', 550.00),
('2024-10-15', 800.00);


-- Dữ liệu cho bảng DoanhThu
INSERT INTO DoanhThu (Ngay, TongThu, TongChi)
VALUES 
('2024-10-01', 1500.00, 800.00),
('2024-10-02', 2000.00, 500.00),
('2024-10-03', 1200.00, 600.00),
('2024-10-04', 1800.00, 700.00),
('2024-10-05', 1600.00, 900.00),
('2024-10-06', 1400.00, 850.00),
('2024-10-07', 2100.00, 400.00),
('2024-10-08', 1700.00, 750.00),
('2024-10-09', 1900.00, 650.00),
('2024-10-10', 1300.00, 500.00),
('2024-10-11', 2200.00, 950.00),
('2024-10-12', 1600.00, 600.00),
('2024-10-13', 2000.00, 700.00),
('2024-10-14', 1500.00, 550.00),
('2024-10-15', 1800.00, 800.00);


-- Dữ liệu cho bảng TaiSan
INSERT INTO TaiSan (MaTaiSan, Ten, NgayMua, SoLuong)
VALUES 
('TS001', N'Máy tính', '2022-06-01', 10),
('TS002', N'Bàn ghế', '2023-01-15', 20),
('TS003', N'Máy chiếu', '2022-11-20', 5),
('TS004', N'Bảng trắng', '2023-02-18', 15),
('TS005', N'Máy photocopy', '2021-12-30', 2),
('TS006', N'Đèn', '2022-06-01', 10),
('TS007', N'Tủ lạnh', '2023-01-15', 1),
('TS008', N'Máy hút bụi', '2022-11-20', 2),
('TS009', N'Văn phòng phẩm', '2023-02-18', 15);


-- Dữ liệu cho bảng QuanLySach
INSERT INTO QuanLySach (MaThuThu, MaSach)
VALUES 
('TT001', 'S001'),
('TT002', 'S002'),
('TT003', 'S003'),
('TT004', 'S004'),
('TT005', 'S005'),
('TT001', 'S006'),
('TT002', 'S007'),
('TT003', 'S008'),
('TT004', 'S009'),
('TT005', 'S010'),
('TT001', 'S011'),
('TT002', 'S012'),
('TT003', 'S013'),
('TT004', 'S014'),
('TT005', 'S015'),
('TT001', 'S016'),
('TT002', 'S017'),
('TT003', 'S018'),
('TT004', 'S019'),
('TT005', 'S020');

-- Dữ liệu cho bảng QuanLyTaiSan
INSERT INTO QuanLyTaiSan (MaThuThu, MaTaiSan)
VALUES 
('TT001', 'TS001'),
('TT002', 'TS002'),
('TT003', 'TS003'),
('TT004', 'TS004'),
('TT005', 'TS005'),
('TT001', 'TS006'),
('TT002', 'TS007'),
('TT003', 'TS008'),
('TT004', 'TS009');


-- Dữ liệu cho bảng QuanLyDoanhThu
INSERT INTO QuanLyDoanhThu (MaThuThu, Ngay)
VALUES 
('TT001', '2024-10-01'),
('TT002', '2024-10-02'),
('TT003', '2024-10-03'),
('TT004', '2024-10-04'),
('TT005', '2024-10-05'),
('TT001', '2024-10-06'),
('TT002', '2024-10-07'),
('TT003', '2024-10-08'),
('TT004', '2024-10-09'),
('TT005', '2024-10-10'),
('TT001', '2024-10-11'),
('TT002', '2024-10-12'),
('TT003', '2024-10-13'),
('TT004', '2024-10-14'),
('TT005', '2024-10-15');


-- Dữ liệu cho bảng ThanNhanThuThu
INSERT INTO ThanNhanThuThu (MaThuThu, MaThanNhan, HoTen)
VALUES 
('TT001', 'TN001', N'Nguyễn Văn Bình'),
('TT002','TN002', N'Trần Thị Huế'),
('TT003', 'TN003', N'Lê Thị Giang'),
('TT004', 'TN004',N'Nguyễn Quốc An'),
('TT005', 'TN005',N'Trần Văn Tùng');


--DELETE FROM QuanLyDoanhThu;
--DELETE FROM CTPhieuLoi;
--DELETE FROM QuanLyPhieuLoi;
--DELETE FROM PhieuLoi;
--DELETE FROM QuanLyTaiSan;
--DELETE FROM QuanLySach;
--DELETE FROM TaiSan;
--DELETE FROM DoanhThu;
--DELETE FROM KhoanChiHangNgay;
--DELETE FROM KhoanThuHangNgay;
--DELETE FROM DanhSachLoi;
--DELETE FROM ThuThu;
--DELETE FROM PhieuTra;
--DELETE FROM PhieuMuon;
--DELETE FROM ChiTietPhieu;
--DELETE FROM Phieu;
--DELETE FROM Sach;
--DELETE FROM NhaXuatBan;
--DELETE FROM DocGia;
--DELETE FROM ThanNhanThuThu;
