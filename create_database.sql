USE [master]
GO
USE [QuanLyCuaHangThuoc_V3]
GO
/****** Object:  Table [dbo].[ChiTietDonBanHang]    Script Date: 5/15/2019 11:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonBanHang](
	[IdChiTietDonBanHang] [int] IDENTITY(1,1) NOT NULL,
	[IdDonBanHang] [int] NULL,
	[IdThuoc] [int] NULL,
	[SoLuongBan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdChiTietDonBanHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhapKho]    Script Date: 5/15/2019 11:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhapKho](
	[IdChitietPhieuNhapKho] [int] IDENTITY(1,1) NOT NULL,
	[IdPhieuNhapKho] [int] NULL,
	[IdThuoc] [int] NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdChitietPhieuNhapKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 5/15/2019 11:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[IdCuaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenCuaHang] [nvarchar](200) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonBanHang]    Script Date: 5/15/2019 11:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonBanHang](
	[IdDonBanHang] [int] IDENTITY(1,1) NOT NULL,
	[NgayBan] [datetime] NOT NULL,
	[IdCuaHang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDonBanHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 5/15/2019 11:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonVi](
	[IdDonVi] [int] IDENTITY(1,1) NOT NULL,
	[TenDonVi] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapKho]    Script Date: 5/15/2019 11:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapKho](
	[IdPhieuNhapKho] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPhieuNhapKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/15/2019 11:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IdTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](200) NOT NULL,
	[TenHienThi] [nvarchar](200) NULL,
	[SoDienThoai] [nvarchar](100) NULL,
	[IdCuaHang] [int] NULL,
	[MatKhau] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuoc]    Script Date: 5/15/2019 11:59:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuoc](
	[IdThuoc] [int] IDENTITY(1,1) NOT NULL,
	[TenThuoc] [nvarchar](200) NOT NULL,
	[HanSuDung] [datetime] NULL,
	[SoLuong] [int] NULL,
	[IdDonVi] [int] NULL,
	[GiaNhap] [money] NULL,
	[GiaBan] [money] NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CuaHang] ON 

INSERT [dbo].[CuaHang] ([IdCuaHang], [TenCuaHang], [DiaChi]) VALUES (1, N'Chi nhánh Thanh Trì', N'Thanh Trì, Hà N?i')
SET IDENTITY_INSERT [dbo].[CuaHang] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([IdTaiKhoan], [TenDangNhap], [TenHienThi], [SoDienThoai], [IdCuaHang], [MatKhau]) VALUES (1, N'vietbuzz', N'Nguyen Duc Thang', N'0982828997', 1, N'db69fc039dcbd2962cb4d28f5891aae1')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
ALTER TABLE [dbo].[Thuoc] ADD  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[Thuoc] ADD  DEFAULT ((0)) FOR [GiaNhap]
GO
ALTER TABLE [dbo].[Thuoc] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[ChiTietDonBanHang]  WITH CHECK ADD FOREIGN KEY([IdDonBanHang])
REFERENCES [dbo].[DonBanHang] ([IdDonBanHang])
GO
ALTER TABLE [dbo].[ChiTietDonBanHang]  WITH CHECK ADD FOREIGN KEY([IdThuoc])
REFERENCES [dbo].[Thuoc] ([IdThuoc])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapKho]  WITH CHECK ADD FOREIGN KEY([IdPhieuNhapKho])
REFERENCES [dbo].[PhieuNhapKho] ([IdPhieuNhapKho])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhapKho]  WITH CHECK ADD FOREIGN KEY([IdThuoc])
REFERENCES [dbo].[Thuoc] ([IdThuoc])
GO
ALTER TABLE [dbo].[DonBanHang]  WITH CHECK ADD FOREIGN KEY([IdCuaHang])
REFERENCES [dbo].[CuaHang] ([IdCuaHang])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([IdCuaHang])
REFERENCES [dbo].[CuaHang] ([IdCuaHang])
GO
ALTER TABLE [dbo].[Thuoc]  WITH CHECK ADD FOREIGN KEY([IdDonVi])
REFERENCES [dbo].[DonVi] ([IdDonVi])
GO
USE [master]
GO
ALTER DATABASE [QuanLyCuaHangThuoc_V2] SET  READ_WRITE 
GO
