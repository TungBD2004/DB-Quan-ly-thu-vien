--Sắp xếp thứ tự ‘HoTen’ trong bảng ‘DocGia’ theo độ tuổi giảm dần của từng người
SELECT HoTen, NgaySinh
FROM DocGia			
ORDER BY NgaySinh ASC;

--Liệt kê Tổng thu, chi và trung bình thu, chi hàng ngày 
SELECT AVG(TongThu) AS TBThuHangNgay , SUM(TongThu) AS TongThu, AVG(TongChi) AS TBChiHangNgay , SUM(TongChi) AS TongChi
 FROM DoanhThu;

--Đếm số lần xuất hiện của tất cả các lỗi 
SELECT MaLoi, COUNT(MaLoi) AS "So luong"
  FROM CTPhieuLoi
  GROUP BY MaLoi;
-- In ra tên của độc giả và số lần mắc lỗi của họ
select DocGia.HoTen,PhieuLoi.maDocGia,COUNT(PhieuLoi.MaDocGia) as SoLanMacLoi
from DocGia join PhieuLoi on DocGia.MaDocGia = PhieuLoi.MaDocGia
group by PhieuLoi.MaDocGia,DocGia.HoTen

--Tổng phiếu mượn và phiếu trả
SELECT 
    (SELECT COUNT(*) FROM phieumuon) AS tong_phieu_muon,
    (SELECT COUNT(*) FROM phieutra) AS tong_phieu_tra;

-- Tính tổng số lượng sách theo mã nhà xuất bản 
SELECT NhaXuatBan.MaNhaXuatBan, NhaXuatBan.Ten AS TenNhaXuatBan, SUM(Sach.SoLuong) AS TongSoLuongSach 
FROM Sach 
JOIN NhaXuatBan ON Sach.MaNhaXuatBan = NhaXuatBan.MaNhaXuatBan 
GROUP BY NhaXuatBan.MaNhaXuatBan, NhaXuatBan.Ten; 


--Truy vấn liệt kê danh sách độc giả theo nhóm độ tuổi
--Truy vấn này sắp xếp độc giả theo từng nhóm độ tuổi, ví dụ: dưới 18 tuổi, từ 18 đến 30 tuổi, và trên 30 tuổi. Điều này giúp dễ dàng phân loại độc giả theo độ tuổi để phân tích hoặc tiếp thị.

SELECT HoTen, NgaySinh,
    CASE 
        WHEN DATEDIFF(YEAR, NgaySinh, GETDATE()) < 18 THEN 'Duoi 18 tuoi'
        WHEN DATEDIFF(YEAR, NgaySinh, GETDATE()) BETWEEN 18 AND 30 THEN '18-30 tuoi'
        ELSE 'Tren 30 tuoi'
    END AS NhomTuoi
FROM DocGia
ORDER BY NhomTuoi, NgaySinh ASC;


-- In ra doanh thu theo ngay
select ngay,Tongthu,Tongchi, (Tongthu - TongChi) as LoiNhuan
from DoanhThu

-- Tổng tiền phạt từ phiếu có mã L001
SELECT SUM(danhsachloi.MucPhat) AS TongSoTienPhat
FROM DanhSachLoi,CTPhieuLoi
where CTPhieuLoi.MaPhieuLoi ='PL001' and CTPhieuLoi.MaLoi = DanhSachLoi.MaLoi


--Truy vấn tính tổng doanh thu từ các giao dịch trong tháng 10:
SELECT MONTH(DoanhThu.Ngay) AS Thang, YEAR(DoanhThu.Ngay) AS Nam, SUM(DoanhThu.TongThu) AS TongDoanhThu
FROM DoanhThu
WHERE MONTH(DoanhThu.Ngay) = 10 AND YEAR(DoanhThu.Ngay) = 2024
GROUP BY MONTH(DoanhThu.Ngay), YEAR(DoanhThu.Ngay);

-- Lịch sử mượn sách kèm chi tiết sách
SELECT pm.MaPhieuMuon, dg.HoTen AS DocGia, s.TenSach, ct.SoLuong, pm.NgayMuon, pm.NgayHetHan
FROM PhieuMuon pm
JOIN Phieu p ON pm.MaPhieuMuon = p.MaPhieu
JOIN ChiTietPhieu ct ON p.MaPhieu = ct.MaPhieu
JOIN Sach s ON ct.MaSach = s.MaSach
JOIN DocGia dg ON p.MaDocGia = dg.MaDocGia
ORDER BY pm.NgayMuon DESC;

-- Thông tin độc giả và số tiền họ phải trả do mắc lỗi
SELECT dg.MaDocGia, dg.HoTen, dg.SoDienThoai, SUM(dl.MucPhat) AS TongTienPhat
FROM DocGia dg
JOIN PhieuLoi pl ON dg.MaDocGia = pl.MaDocGia
JOIN CTPhieuLoi ctpl ON pl.MaPhieuLoi = ctpl.MaPhieuLoi
JOIN DanhSachLoi dl ON ctpl.MaLoi = dl.MaLoi
GROUP BY dg.MaDocGia, dg.HoTen, dg.SoDienThoai
HAVING SUM(dl.MucPhat) > 0;

-- Tìm các độc giả có số sách mượn cao nhất trong tháng
SELECT Top 1 dg.MaDocGia, dg.HoTen, MONTH(pm.NgayMuon) AS Thang, SUM(ct.SoLuong) AS TongSoLuongSachMuon
FROM DocGia dg
JOIN Phieu p ON dg.MaDocGia = p.MaDocGia
JOIN PhieuMuon pm ON p.MaPhieu = pm.MaPhieuMuon
JOIN ChiTietPhieu ct ON p.MaPhieu = ct.MaPhieu
GROUP BY dg.MaDocGia, dg.HoTen, MONTH(pm.NgayMuon)
ORDER BY TongSoLuongSachMuon DESC

-- Liệt kê các sách chưa được mượn
SELECT s.MaSach, s.TenSach
FROM Sach s
LEFT JOIN ChiTietPhieu ct ON s.MaSach = ct.MaSach
WHERE ct.MaSach IS NULL;

-- Liệt kê các sách mà mỗi thủ thư quản lý và đồng thời giám sát tài sản
SELECT tt.MaThuThu, tt.HoTen, s.TenSach
FROM ThuThu tt
JOIN QuanLySach qs ON tt.MaThuThu = qs.MaThuThu
JOIN Sach s ON qs.MaSach = s.MaSach
WHERE EXISTS (
    SELECT 1 
    FROM QuanLyTaiSan qts 
    WHERE qts.MaThuThu = tt.MaThuThu
);
