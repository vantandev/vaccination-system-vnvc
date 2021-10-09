CREATE DATABASE QuanLyCuaHangTienLoi
GO

USE QuanLyCuaHangTienLoi 
GO



CREATE TABLE dbo.NHANVIEN (
	TenDangNhap VARCHAR(50) PRIMARY KEY,
	MatKhau VARCHAR(50) NULL,
	TenNguoiDung NVARCHAR(50) NULL,
	Quyen NVARCHAR(20) NULL,

	)
GO


CREATE TABLE dbo.KHACHHANG (
	MaKH VARCHAR(20) PRIMARY KEY,
	TenKH NVARCHAR(50) NOT NULL,
	GioiTinh BIT NULL,
	DiaChi NVARCHAR(50) NULL,
	SDT VARCHAR(10) NOT NULL,
	Email NVARCHAR(50) NULL,
	)
GO


CREATE TABLE dbo.HANGHOA (
	MaHang NVARCHAR(50) PRIMARY KEY,
	TenHang NVARCHAR(50) NULL,
	DonVi NVARCHAR(20) NULL,
	GiaBan INT NULL,
	SoLuong INT NULL,
	)
GO



CREATE TABLE dbo.HOADON (
	MaHD NVARCHAR(50) NOT NULL,
	MaKH NCHAR(10) NULL,
	NgayTao DATE NOT NULL,
	TenDangNhap VARCHAR(50) NOT NULL,
	TongTien INT NOT NULL,
	PRIMARY KEY(MaHD, MaKH),
	FOREIGN KEY (MaKH) REFERENCES dbo.KHACHHANG(MaKH),
	)
GO



CREATE TABLE dbo.NHACUNGCAP (
	MaNCC NCHAR(10) PRIMARY KEY,
	TenNCC NVARCHAR(50) NULL,
	DiaChi NVARCHAR(50) NULL,
	SDT INT NULL,
	Email NVARCHAR(50) NULL,

	)
GO



CREATE TABLE dbo.PHIEUNHAP (
	MaPN NCHAR(10) NOT NULL,
	MaNCC NCHAR(10) NOT NULL,
	TenDangNhap VARCHAR(50) NOT NULL,
	NgayNhap DATE NOT NULL,
	PRIMARY KEY(MaPN, MaNCC, TenDangNhap),
	FOREIGN KEY (MaNCC) REFERENCES dbo.NHACUNGCAP(MaNCC),
	FOREIGN KEY (TenDangNhap) REFERENCES dbo.NHANVIEN(TenDangNhap)

	)
GO



CREATE TABLE dbo.DonViTinh (
	MaDVT VARCHAR(10) NOT NULL,
	TenDVT NVARCHAR(20) NOT NULL,
)
GO



CREATE TABLE dbo.LoaiThanhVien (
	MaLoai NCHAR(10) NULL,
	TenLoai NVARCHAR(50) NULL,
	QuyenLoi INT NULL
)
GO


CREATE TABLE dbo.CTHD (
	MaHD NVARCHAR(50) NOT NULL,
	MaHang NVARCHAR(50) NOT NULL,
	SoLuong INT NULL,
	DonGia FLOAT NULL,
	PRIMARY KEY(MaHD, MaHang),
	FOREIGN KEY (MaHD) REFERENCES dbo.HOADON(MaHD),
	FOREIGN KEY (MaHang) REFERENCES dbo.HANGHOA(MaHang)
)
GO



CREATE TABLE dbo.CTPN (
	MaPN NCHAR(10) NOT NULL,
	MaHang NVARCHAR(50) NOT NULL,
	SoLuong INT NULL,
	DonGia FLOAT NULL,
	PRIMARY KEY(MaPN, MaHang),
	FOREIGN KEY (MaPN) REFERENCES dbo.PHIEUNHAP(MaPN),
	FOREIGN KEY (MaHang) REFERENCES dbo.HANGHOA(MaHang)
	)
GO



