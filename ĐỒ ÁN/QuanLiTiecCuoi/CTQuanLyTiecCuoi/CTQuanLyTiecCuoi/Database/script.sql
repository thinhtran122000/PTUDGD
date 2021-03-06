USE [master]
GO
/****** Object:  Database [QUANLYTIECCUOI]    Script Date: 10/29/2020 4:14:32 PM ******/
CREATE DATABASE [QUANLYTIECCUOI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYTIECCUOI', FILENAME = N'D:\ĐỒ ÁN\QuanLiTiecCuoi\CTQuanLyTiecCuoi\CTQuanLyTiecCuoi\Database\QUANLYTIECCUOI.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUANLYTIECCUOI_log', FILENAME = N'D:\ĐỒ ÁN\QuanLiTiecCuoi\CTQuanLyTiecCuoi\CTQuanLyTiecCuoi\Database\QUANLYTIECCUOI_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QUANLYTIECCUOI] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYTIECCUOI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYTIECCUOI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYTIECCUOI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYTIECCUOI] SET QUERY_STORE = OFF
GO
USE [QUANLYTIECCUOI]
GO
/****** Object:  Table [dbo].[BAOCAOTHANG]    Script Date: 10/29/2020 4:14:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOCAOTHANG](
	[IDBaoCaoThang] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [int] NOT NULL,
	[TongDoanhThu] [int] NOT NULL,
 CONSTRAINT [PK_BAOCAOTHANG] PRIMARY KEY CLUSTERED 
(
	[IDBaoCaoThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDATTIEC]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDATTIEC](
	[IDCTDatTiec] [int] IDENTITY(1,1) NOT NULL,
	[IDDatTiec] [int] NOT NULL,
	[IDMonAn] [int] NOT NULL,
	[IDDichVu] [int] NULL,
 CONSTRAINT [PK_CTDATTIEC] PRIMARY KEY CLUSTERED 
(
	[IDCTDatTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANGNHAP]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGNHAP](
	[IDTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DANGNHAP] PRIMARY KEY CLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[IDDichVu] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](50) NOT NULL,
	[DonGia] [int] NOT NULL,
 CONSTRAINT [PK_DICHVU] PRIMARY KEY CLUSTERED 
(
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[IDHD] [int] IDENTITY(1,1) NOT NULL,
	[IDKH] [int] NOT NULL,
	[NgayThanhToan] [smalldatetime] NOT NULL,
	[TongTienBan] [int] NULL,
	[TongTienDichVu] [int] NOT NULL,
	[TongTienHoaDon] [int] NULL,
	[TienCoc] [int] NOT NULL,
	[TienPhat] [float] NOT NULL,
	[TienConLai] [float] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[IDHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[IDKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[TenChuRe] [nvarchar](50) NOT NULL,
	[TenCoDau] [nvarchar](50) NOT NULL,
	[DienThoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[IDKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LAPBAOCAO]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAPBAOCAO](
	[IDBaoCao] [int] IDENTITY(1,1) NOT NULL,
	[NgayLap] [smalldatetime] NOT NULL,
	[Thang] [int] NOT NULL,
	[SoLuongTiec] [int] NOT NULL,
	[DoanhThu] [bigint] NOT NULL,
 CONSTRAINT [PK_LAPBAOCAO] PRIMARY KEY CLUSTERED 
(
	[IDBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIMONAN]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIMONAN](
	[LoaiMonAn] [nchar](10) NOT NULL,
	[TenLoaiMA] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LOAIMONAN] PRIMARY KEY CLUSTERED 
(
	[LoaiMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISANH]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISANH](
	[MaLoaiSanh] [nvarchar](50) NOT NULL,
	[DonGiaBanTT] [int] NOT NULL,
 CONSTRAINT [PK_LOAISANH_1] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SANH]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANH](
	[IDSanh] [int] IDENTITY(1,1) NOT NULL,
	[TenSanh] [nvarchar](50) NOT NULL,
	[MaLoaiSanh] [nvarchar](50) NOT NULL,
	[SoBanTD] [int] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SANH] PRIMARY KEY CLUSTERED 
(
	[IDSanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinCa]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinCa](
	[MaCa] [int] IDENTITY(1,1) NOT NULL,
	[TenCa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ThongTinCa] PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGTINDATTIEC]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGTINDATTIEC](
	[IDDatTiec] [int] IDENTITY(1,1) NOT NULL,
	[IDKH] [int] NOT NULL,
	[NgayDatTiec] [smalldatetime] NOT NULL,
	[NgayToChuc] [smalldatetime] NOT NULL,
	[MaCa] [int] NOT NULL,
	[IDSanh] [int] NOT NULL,
	[TienDatCoc] [int] NOT NULL,
	[SoLuongBan] [int] NOT NULL,
 CONSTRAINT [PK_THONGTINDATTIEC] PRIMARY KEY CLUSTERED 
(
	[IDDatTiec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUCDON]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUCDON](
	[IDMonAn] [int] IDENTITY(1,1) NOT NULL,
	[TenMonAn] [nvarchar](50) NOT NULL,
	[DonGia] [int] NOT NULL,
	[LoaiMonAn] [nchar](10) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_THUCDON] PRIMARY KEY CLUSTERED 
(
	[IDMonAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DANGNHAP] ON 

INSERT [dbo].[DANGNHAP] ([IDTaiKhoan], [TaiKhoan], [MatKhau]) VALUES (1, N'admin', N'admin')
INSERT [dbo].[DANGNHAP] ([IDTaiKhoan], [TaiKhoan], [MatKhau]) VALUES (3, N'thinh', N'thinh')
INSERT [dbo].[DANGNHAP] ([IDTaiKhoan], [TaiKhoan], [MatKhau]) VALUES (4, N'thuan', N'thuan')
SET IDENTITY_INSERT [dbo].[DANGNHAP] OFF
GO
SET IDENTITY_INSERT [dbo].[DICHVU] ON 

INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (1, N'MC', 2000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (2, N'Biểu diễn văn nghệ ', 12000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (3, N' Âm Thanh Ánh Sáng ', 4000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (4, N' Trang Trí  Cổng Vào ', 3000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (5, N' Ban Nhạc ', 7000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (6, N'Pháo Sáng ', 1000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (7, N'Màn hình Leb 100in ', 1000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (8, N'Đầu Bếp Nhà Hàng 5 sao ', 4000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (9, N'Bàn Ghế', 7000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (10, N'Trang trí Hội Nghị ', 10000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (11, N'Thiết kế hình ảnh ,thiệp mời', 1000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (12, N'Dựng clip ,trình chiếu suốt tiệc', 3000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (13, N'Gấu bông ', 4000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (14, N'Nhân viên bê đỡ tráp ăn hỏi ', 3000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (15, N'Xe đón dâu', 2000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (16, N'Xe đưa đón khách', 3000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (19, N'Trang điểm cô dâu', 3000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (20, N'Mâm quả ', 2000000)
INSERT [dbo].[DICHVU] ([IDDichVu], [TenDichVu], [DonGia]) VALUES (21, N'Quần áo cô dâu ,chú rể ', 4000000)
SET IDENTITY_INSERT [dbo].[DICHVU] OFF
GO
INSERT [dbo].[LOAIMONAN] ([LoaiMonAn], [TenLoaiMA]) VALUES (N'KhaiVi    ', N'Khai vị')
INSERT [dbo].[LOAIMONAN] ([LoaiMonAn], [TenLoaiMA]) VALUES (N'MonChinh  ', N'Món chính')
INSERT [dbo].[LOAIMONAN] ([LoaiMonAn], [TenLoaiMA]) VALUES (N'TrangMieng', N'Tráng miệng')
GO
INSERT [dbo].[LOAISANH] ([MaLoaiSanh], [DonGiaBanTT]) VALUES (N'A         ', 1000000)
INSERT [dbo].[LOAISANH] ([MaLoaiSanh], [DonGiaBanTT]) VALUES (N'B         ', 1100000)
INSERT [dbo].[LOAISANH] ([MaLoaiSanh], [DonGiaBanTT]) VALUES (N'C         ', 1200000)
INSERT [dbo].[LOAISANH] ([MaLoaiSanh], [DonGiaBanTT]) VALUES (N'D', 1400000)
INSERT [dbo].[LOAISANH] ([MaLoaiSanh], [DonGiaBanTT]) VALUES (N'E', 1600000)
GO
SET IDENTITY_INSERT [dbo].[SANH] ON 

INSERT [dbo].[SANH] ([IDSanh], [TenSanh], [MaLoaiSanh], [SoBanTD], [GhiChu]) VALUES (24, N'Như lập', N'A         ', 130, N'')
INSERT [dbo].[SANH] ([IDSanh], [TenSanh], [MaLoaiSanh], [SoBanTD], [GhiChu]) VALUES (26, N'Cát tường', N'B         ', 140, N'')
INSERT [dbo].[SANH] ([IDSanh], [TenSanh], [MaLoaiSanh], [SoBanTD], [GhiChu]) VALUES (27, N'Huy Hoàng', N'C', 150, NULL)
INSERT [dbo].[SANH] ([IDSanh], [TenSanh], [MaLoaiSanh], [SoBanTD], [GhiChu]) VALUES (28, N'Như ý', N'D', 130, NULL)
INSERT [dbo].[SANH] ([IDSanh], [TenSanh], [MaLoaiSanh], [SoBanTD], [GhiChu]) VALUES (32, N'Hạnh Phúc', N'E', 120, NULL)
SET IDENTITY_INSERT [dbo].[SANH] OFF
GO
SET IDENTITY_INSERT [dbo].[ThongTinCa] ON 

INSERT [dbo].[ThongTinCa] ([MaCa], [TenCa]) VALUES (1, N'Trưa')
INSERT [dbo].[ThongTinCa] ([MaCa], [TenCa]) VALUES (2, N'Tối')
SET IDENTITY_INSERT [dbo].[ThongTinCa] OFF
GO
SET IDENTITY_INSERT [dbo].[THUCDON] ON 

INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (3, N'Rau muống xào ', 40000, N'Khaivi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (4, N'Gỏi mực kiểu thái', 200000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (5, N'Súp cua gà xé', 150000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (6, N'Cá Chẽm Sốt Tứ Xuyên ', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (7, N'Sườn heo nấu đậu bánh mì', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (8, N'Cơm chiên dương châu ', 80000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (9, N'Chè nhãn nhục thạch dừa', 200000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (10, N'Gỏi sứa mực', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (11, N'Súp cua cay Thượng Hải', 250000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (12, N'Gà Hấp Đông Cô', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (14, N'Bò nấu patê-Bánh mì ', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (15, N'Cơm gói lá sen ', 250000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (16, N'Chè đậu đỏ', 250000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (17, N'Bánh cuộn xúc xích', 200000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (18, N'Pate Chaub', 200000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (19, N'Bò cuộn nấm kim chi ', 250000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (20, N'Cá chiên mè', 200000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (21, N'Jambon bao trứng ', 150000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (22, N'Tôm sú bao cốm xanh ', 200000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (23, N'Gỏi bò bóp thấu', 250000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (24, N'Gỏi sứ gà xé', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (25, N'Súp tam tơ ', 200000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (26, N'Súp măng tây cua', 270000, N'KhaiVI    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (27, N'Cơm chiên cá mặn thịt gà ', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (28, N'Bún xào Singapore', 280000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (29, N'Mì Hấp Tam Tơ', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (30, N'Giò heo muối chiên giòn', 350000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (31, N'Bò xào bắp hạt Thượng Hải ', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (32, N'Cá diêu hồng sốt chua ngọt', 250000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (33, N'Sườn non nấu pate', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (34, N'Nhãn ', 200000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (35, N'Nho Mĩ', 200000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (36, N'Rau câu nghệ thuật 3D', 300000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (37, N'Heo sữa quay+ Bánh Bao', 400000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (38, N'Phi lê cá Chẽm sốt chua ngọt ', 500000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (39, N'Bò nấu đốp', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (40, N'Tôm sú ủ muối', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (41, N'Sườn non đút lò BBQ', 400000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (42, N'Lẩu gà nấu lá giang+Bún', 450000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (43, N'Bò cuộn phô mai', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (44, N'Chả Tôm hạt điều ', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (45, N'Sườn kinh đô ', 250000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (46, N'Bò nấu tiêu xanh+Bánh mì ', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (48, N'Mì hấp dầu xào xá xíu', 400000, N'MonChinh  ', N'')
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (49, N'Chè hạt sen', 300000, N'Trangmieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (50, N'Gỏi ngói sen tôm thịt ', 350000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (51, N'Súp tứ vị nấm Đông Cô', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (52, N'Cá Bớp nướng muối ớt xanh', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (57, N'Gà nấu táo đỏ +Bánh mì ', 250000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (58, N'Lẩu Thái Chua cay ', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (59, N'Chè tuyết nhĩ bạch quả ', 250000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (60, N'Mực chiên giòn ', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (61, N'Nem nướng ', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (62, N'Chả đùm ', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (63, N'Súp sò điệp tóc tiên ', 250000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (64, N'Tôm sú hoàng kim', 400000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (65, N'Lẩu gà nấu nấm +Bánh Mì', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (66, N'Trái cây thập cẩm', 400000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (67, N'Gỏi củ hủ dừa tôm thịt ', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (68, N'Tôm chiên cốm xanh', 400000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (69, N'Súp cua Cá Bông', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (70, N'Mực ống nhòi trứng muối ', 400000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (71, N'Vịt nướng Tứ Xuyên +Bánh Bao', 400000, N'MonChinh  ', N'')
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (72, N'Lẩu sa tế hải sản ', 400000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (73, N'Chè đậu xanh', 240000, N'Trangmieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (74, N'Chè đậu đen ', 230000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (75, N'Gỏi chuối hải sản chân gà rút xương', 300000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (76, N'Súp hải sản ngọc bích', 400000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (77, N'Cá Hồi nướng muối ớt xanh', 360000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (78, N'Bồ Câu tiềm hạt sen', 400000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (79, N'Gân nai xào Đông Cô', 390000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (80, N'Cơm chiên hoàng bảo', 400000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (81, N'Chè Hông Kông', 250000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (82, N'Gỏi tôm ngự thuyền ', 280000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (83, N'Súp bào ngư vi cá thịt cua', 400000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (84, N'Bồ câu tay cầm', 250000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (85, N'Lẩu Cá Mú Thái Lan', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (86, N'Chè dừa tây', 210000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (87, N'Gỏi tiến vua tôm thịt ', 270000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (88, N'Chả giò hải sản ', 230000, N'KhaiVi    ', N'')
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (89, N'Súp vi cá thịt cua', 250000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (90, N'Đông cô Bách Hoa', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (91, N'Cua lột lăn mè chiên', 400000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (93, N'Lẩu hải sản Hông Kông +Mì undon', 300000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (94, N'Chè hạt sen bạch quả táo đỏ ', 400000, N'TrangMieng', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (95, N'Tôm chiên hạnh nhân', 360000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (96, N'Súp bào ngư phú quý', 400000, N'KhaiVi    ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (97, N'Hàu đút lò phô mai', 340000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (98, N'Tôm càng rang muối Hồng Kông', 350000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (99, N'Thân bò Mỹ sốt tiêu đen ', 400000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (101, N'Lẩu cua 2 miền ', 500000, N'MonChinh  ', NULL)
INSERT [dbo].[THUCDON] ([IDMonAn], [TenMonAn], [DonGia], [LoaiMonAn], [GhiChu]) VALUES (106, N'Sâm bổ lượng ', 230000, N'TrangMieng', NULL)
SET IDENTITY_INSERT [dbo].[THUCDON] OFF
GO
/****** Object:  Index [IX_DANGNHAP]    Script Date: 10/29/2020 4:14:33 PM ******/
CREATE NONCLUSTERED INDEX [IX_DANGNHAP] ON [dbo].[DANGNHAP]
(
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTDATTIEC]  WITH CHECK ADD  CONSTRAINT [FK_CTDATTIEC_DICHVU] FOREIGN KEY([IDDichVu])
REFERENCES [dbo].[DICHVU] ([IDDichVu])
GO
ALTER TABLE [dbo].[CTDATTIEC] CHECK CONSTRAINT [FK_CTDATTIEC_DICHVU]
GO
ALTER TABLE [dbo].[CTDATTIEC]  WITH CHECK ADD  CONSTRAINT [FK_CTDATTIEC_THONGTINDATTIEC] FOREIGN KEY([IDDatTiec])
REFERENCES [dbo].[THONGTINDATTIEC] ([IDDatTiec])
GO
ALTER TABLE [dbo].[CTDATTIEC] CHECK CONSTRAINT [FK_CTDATTIEC_THONGTINDATTIEC]
GO
ALTER TABLE [dbo].[CTDATTIEC]  WITH CHECK ADD  CONSTRAINT [FK_CTDATTIEC_THUCDON] FOREIGN KEY([IDMonAn])
REFERENCES [dbo].[THUCDON] ([IDMonAn])
GO
ALTER TABLE [dbo].[CTDATTIEC] CHECK CONSTRAINT [FK_CTDATTIEC_THUCDON]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([IDKH])
REFERENCES [dbo].[KHACHHANG] ([IDKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[SANH]  WITH CHECK ADD  CONSTRAINT [FK_SANH_LOAISANH] FOREIGN KEY([MaLoaiSanh])
REFERENCES [dbo].[LOAISANH] ([MaLoaiSanh])
GO
ALTER TABLE [dbo].[SANH] CHECK CONSTRAINT [FK_SANH_LOAISANH]
GO
ALTER TABLE [dbo].[THONGTINDATTIEC]  WITH CHECK ADD  CONSTRAINT [FK_THONGTINDATTIEC_KHACHHANG] FOREIGN KEY([IDKH])
REFERENCES [dbo].[KHACHHANG] ([IDKH])
GO
ALTER TABLE [dbo].[THONGTINDATTIEC] CHECK CONSTRAINT [FK_THONGTINDATTIEC_KHACHHANG]
GO
ALTER TABLE [dbo].[THONGTINDATTIEC]  WITH CHECK ADD  CONSTRAINT [FK_THONGTINDATTIEC_SANH] FOREIGN KEY([IDSanh])
REFERENCES [dbo].[SANH] ([IDSanh])
GO
ALTER TABLE [dbo].[THONGTINDATTIEC] CHECK CONSTRAINT [FK_THONGTINDATTIEC_SANH]
GO
ALTER TABLE [dbo].[THONGTINDATTIEC]  WITH CHECK ADD  CONSTRAINT [FK_THONGTINDATTIEC_ThongTinCa] FOREIGN KEY([MaCa])
REFERENCES [dbo].[ThongTinCa] ([MaCa])
GO
ALTER TABLE [dbo].[THONGTINDATTIEC] CHECK CONSTRAINT [FK_THONGTINDATTIEC_ThongTinCa]
GO
ALTER TABLE [dbo].[THUCDON]  WITH CHECK ADD  CONSTRAINT [FK_THUCDON_LOAIMONAN] FOREIGN KEY([LoaiMonAn])
REFERENCES [dbo].[LOAIMONAN] ([LoaiMonAn])
GO
ALTER TABLE [dbo].[THUCDON] CHECK CONSTRAINT [FK_THUCDON_LOAIMONAN]
GO
/****** Object:  StoredProcedure [dbo].[SuaDichVu]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SuaDichVu]
@IDDichVu int,
@TenDichVu nvarchar(50),
@DonGia int
as
update DICHVU set TenDichVu=@TenDichVu,DonGia=@DonGia where IDDichVu=@IDDichVu
GO
/****** Object:  StoredProcedure [dbo].[SuaMonAn]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SuaMonAn]
@IDMonAn int,
@TenMonAn nvarchar(50),
@DonGia int,
@LoaiMonAn nchar(10),
@Ghichu nvarchar(50)
as
update THUCDON set TenMonAn=@TenMonAn,DonGia=@DonGia,LoaiMonAn=@LoaiMonAn,GhiChu=@Ghichu where IDMonAn=@IDMonAn
GO
/****** Object:  StoredProcedure [dbo].[SuaSanh]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SuaSanh]
@IDSanh int,
@TenSanh nvarchar(50),
@MaLoaiSanh char(10),    
@SoBanTD int,
@GhiChu nvarchar(50)
as
update SANH set TenSanh=@TenSanh,MaLoaiSanh=@MaLoaiSanh,SoBanTD=@SoBanTD,GhiChu=@GhiChu where IDSanh=@IDSanh
GO
/****** Object:  StoredProcedure [dbo].[SuaTaiKhoan]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SuaTaiKhoan]
@IDTaiKhoan int,
@TaiKhoan nvarchar(50),
@MatKhau nvarchar(50)
as
update DANGNHAP set TaiKhoan=@TaiKhoan,MatKhau=@MatKhau where IDTaiKhoan=@IDTaiKhoan
GO
/****** Object:  StoredProcedure [dbo].[ThemBaoCao]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemBaoCao]
@NgayLap smalldatetime,
@Thang int,
@SoLuongTiec int,
@DoanhThu bigint
as insert into LAPBAOCAO(NgayLap,Thang,SoLuongTiec,DoanhThu)
values(@NgayLap,@Thang,@SoLuongTiec,@DoanhThu)
GO
/****** Object:  StoredProcedure [dbo].[ThemCtDatTiec]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemCtDatTiec]
@IdDatTiec int,
@IdMonAn int,
@IdDichVu int = null
as insert into CTDATTIEC(IDDatTiec,IDMonAn,IDDichVu) values (@IdDatTiec,@IdMonAn,@IdDichVu)
GO
/****** Object:  StoredProcedure [dbo].[ThemDichVu]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemDichVu]
@TenDichVu nvarchar(50),
@DonGia int
as insert into DICHVU(TenDichVu,DonGia)
values(@TenDichVu,@DonGia)
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDon]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemHoaDon]
@IDKH int,
@NgayThanhToan smalldatetime,
@TongTienBan int,
@TongTienDichVu int,
@TongTienHoaDon int,
@TienCoc int,
@TienPhat float,
@TienConLai float
as insert into HOADON(IDKH,NgayThanhToan,TongTienBan,TongTienDichVu,TongTienHoaDon,TienCoc,TienPhat,TienConLai)
values(@IDKH,@NgayThanhToan,@TongTienBan,@TongTienDichVu,@TongTienHoaDon,@TienCoc,@TienPhat,@TienConLai)
GO
/****** Object:  StoredProcedure [dbo].[ThemKhachHang]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ThemKhachHang]
@TenKH nvarchar(50),
@TenChuRe nvarchar(50),
@TenCoDau nvarchar(50),
@DienThoai nvarchar(50)
as 
insert into KHACHHANG(TenKH,TenChuRe,TenCoDau,DienThoai)
values(@TenKH,@TenChuRe,@TenCoDau,@DienThoai)
SELECT @@IDENTITY asLastID
GO
/****** Object:  StoredProcedure [dbo].[ThemMonAn]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemMonAn]
@TenMonAn nvarchar(50),
@DonGia int,
@LoaiMonAn nchar(10),
@Ghichu nvarchar(50)
as insert into THUCDON(TenMonAn,DonGia,LoaiMonAn,GhiChu)
values(@TenMonAn,@DonGia,@LoaiMonAn,@Ghichu)
GO
/****** Object:  StoredProcedure [dbo].[ThemSanh]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemSanh]
@TenSanh nvarchar(50),
@MaLoaiSanh char(10),
@SoBanTD int,
@GhiChu nvarchar(50)
as 
insert into SANH(TenSanh,MaLoaiSanh,SoBanTD,GhiChu)
values(@TenSanh,@MaLoaiSanh,@SoBanTD,@GhiChu)
GO
/****** Object:  StoredProcedure [dbo].[ThemTaiKhoan]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemTaiKhoan]
@TaiKhoan nvarchar(50),
@MatKhau nvarchar(50)
as 
insert into DANGNHAP(TaiKhoan,MatKhau)
values(@TaiKhoan,@MatKhau)
GO
/****** Object:  StoredProcedure [dbo].[ThemTiec]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemTiec]
@IDKH int,
@NgayDatTiec smalldatetime,
@NgayToChuc smalldatetime,
@MaCa int,
@IDSanh int,
@TienDatCoc int,
@SoLuongBan int
as insert into THONGTINDATTIEC(IDKH,NgayDatTiec,NgayToChuc,MaCa,IDSanh,TienDatCoc,SoLuongBan)
values(@IDKH,@NgayDatTiec,@NgayToChuc,@MaCa,@IDSanh,@TienDatCoc,@SoLuongBan)
SELECT @@IDENTITY asLastID
GO
/****** Object:  StoredProcedure [dbo].[XoaSanh]    Script Date: 10/29/2020 4:14:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XoaSanh]
@IDSanh int
as
delete from SANH where IDSanh=@IDSanh
GO
USE [master]
GO
ALTER DATABASE [QUANLYTIECCUOI] SET  READ_WRITE 
GO
