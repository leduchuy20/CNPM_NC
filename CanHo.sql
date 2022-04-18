
create database CanHo3

use CanHo3




Create table [KhachHang] (
	[MakhachHang] Integer NOT NULL,
	[Ten] Nchar(100) NULL,
	[DiaChi] Nvarchar(200) NULL,
	[SDT] Nvarchar(10) NULL,
	[Email] Nchar(100) NULL,
	[MaCanHo] Integer NOT NULL,
	[MaDichVu] Nchar(10) NOT NULL,
Primary Key  ([MakhachHang])
) 
go

Create table [CanHo_BietThu] (
	[MaCanHo] Integer NOT NULL,
	[MaHangSao] Char(10) NOT NULL,
	[TenCanHo] Nchar(100) NULL,
	[DiaChi] Nchar(200) NULL,
	[TinhTrang] Char(10) NULL,
	[GiaTien] Float NOT NULL,
	[MaChiTietCanHo] Integer NOT NULL,
	[MaLoaiCanHo_BietThu] Integer NOT NULL,
Primary Key  ([MaCanHo])
) 
go

Create table [HangSao] (
	[MaHangSao] Char(10) NOT NULL,
	[SoSao] Float NULL,
Primary Key  ([MaHangSao])
) 
go

Create table [DichVu] (
	[MaDichVu] Nchar(10) NOT NULL,
	[TenDichVu] Nchar(100) NULL,
	[GiaDichVu] Float NULL,
Primary Key  ([MaDichVu])
) 
go

Create table [ChiTietCanHo] (
	[MaChiTietCanHo] Integer NOT NULL,
	[ThongTinCanHo] Nchar(100) NULL,
	[GioiThieuCanHo] Nchar(200) NULL,
	[TenTienNghi] Nchar(200) NULL,
	[ThoiGianNhanPhong] Datetime NULL,
	[ThoiGianTraPhong] Datetime NULL,
Primary Key  ([MaChiTietCanHo])
) 
go

Create table [Partner] (
	[MaPartner] Integer NOT NULL,
	[TenPartner] Nvarchar(100) NULL,
	[DiaChiPartner] Nvarchar(200) NULL,
	[SDT] Nvarchar(10) NULL,
	[MaHopDong] Char(10) NOT NULL,
Primary Key  ([MaPartner])
) 
go

Create table [HopDong] (
	[MaHopDong] Char(10) NOT NULL,
	[NgayLapHopDong] Datetime NULL,
	[NgayDungHopDong] Datetime NULL,
Primary Key  ([MaHopDong])
) 
go

Create table [ChiTietHopDong] (
	[MaHopDong] Char(10) NOT NULL,
	[MaCanHo] Integer NOT NULL,
	[ThoiHan] Datetime NULL,
Primary Key  ([MaHopDong],[MaCanHo])
) 
go

Create table [LoaiCanHo] (
	[MaLoaiCanHo_BietThu] Integer NOT NULL,
	[LoaiCanHo_BietThu] Nchar(50) NULL,
Primary Key  ([MaLoaiCanHo_BietThu])
) 
go


Alter table [KhachHang] add  foreign key([MaCanHo]) references [CanHo_BietThu] ([MaCanHo]) 
go
Alter table [ChiTietHopDong] add  foreign key([MaCanHo]) references [CanHo_BietThu] ([MaCanHo]) 
go
Alter table [CanHo_BietThu] add  foreign key([MaHangSao]) references [HangSao] ([MaHangSao]) 
go
Alter table [KhachHang] add  foreign key([MaDichVu]) references [DichVu] ([MaDichVu]) 
go
Alter table [CanHo_BietThu] add  foreign key([MaChiTietCanHo]) references [ChiTietCanHo] ([MaChiTietCanHo]) 
go
Alter table [Partner] add  foreign key([MaHopDong]) references [HopDong] ([MaHopDong]) 
go
Alter table [ChiTietHopDong] add  foreign key([MaHopDong]) references [HopDong] ([MaHopDong]) 
go
Alter table [CanHo_BietThu] add  foreign key([MaLoaiCanHo_BietThu]) references [LoaiCanHo] ([MaLoaiCanHo_BietThu]) 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


/* Roles permissions */


/* Users permissions */


