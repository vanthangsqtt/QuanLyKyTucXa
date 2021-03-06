USE [master]
GO
/****** Object:  Database [QLKTX]    Script Date: 7/8/2017 9:26:24 PM ******/
CREATE DATABASE [QLKTX]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLKTX', FILENAME = N'D:\2\New folder (3)\Database\QLKTX.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLKTX_log', FILENAME = N'D:\2\New folder (3)\Database\QLKTX_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLKTX] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLKTX].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLKTX] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLKTX] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLKTX] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLKTX] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLKTX] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLKTX] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLKTX] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLKTX] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLKTX] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLKTX] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLKTX] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLKTX] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLKTX] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLKTX] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLKTX] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLKTX] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLKTX] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLKTX] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLKTX] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLKTX] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLKTX] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLKTX] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLKTX] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLKTX] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLKTX] SET  MULTI_USER 
GO
ALTER DATABASE [QLKTX] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLKTX] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLKTX] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLKTX] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLKTX]
GO
/****** Object:  Table [dbo].[Diennuoc]    Script Date: 7/8/2017 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diennuoc](
	[Maphong] [nvarchar](10) NOT NULL,
	[Thang] [date] NOT NULL,
	[CScudien] [int] NULL,
	[CSmoidien] [int] NULL,
	[CScunuoc] [int] NULL,
	[CSmoinuoc] [int] NULL,
 CONSTRAINT [PK_Diennuoc] PRIMARY KEY CLUSTERED 
(
	[Maphong] ASC,
	[Thang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khu]    Script Date: 7/8/2017 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khu](
	[MaKhu] [nvarchar](10) NOT NULL,
	[Tenkhu] [nvarchar](20) NULL,
 CONSTRAINT [PK_Khu_1] PRIMARY KEY CLUSTERED 
(
	[MaKhu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 7/8/2017 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nvarchar](10) NOT NULL,
	[MaKhu] [nvarchar](10) NULL,
	[Tenphong] [nvarchar](10) NULL,
	[Loaiphong] [bit] NULL,
	[Songuoihientai] [int] NULL,
	[Songuoitoida] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SV]    Script Date: 7/8/2017 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SV](
	[MaSV] [nvarchar](10) NOT NULL,
	[MaKTX] [nvarchar](10) NOT NULL,
	[Ho] [nvarchar](20) NULL,
	[Ten] [nvarchar](10) NULL,
	[CMND] [nvarchar](10) NULL,
	[Gioitinh] [bit] NULL,
	[Ngaysinh] [date] NULL,
	[SDT] [nvarchar](15) NULL,
	[Quequan] [nvarchar](100) NULL,
	[Ngaylamhopdong] [date] NULL,
	[MaPhong] [nvarchar](10) NULL,
	[Hinh] [nvarchar](100) NULL,
	[Hotengh] [nvarchar](50) NULL,
	[Sdtgh] [nvarchar](15) NULL,
	[Quanhe] [nvarchar](10) NULL,
	[Nghenghiep] [nvarchar](100) NULL,
 CONSTRAINT [PK_SV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaKTX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Taikhoan]    Script Date: 7/8/2017 9:26:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taikhoan](
	[username] [nvarchar](20) NOT NULL,
	[Pass] [nvarchar](20) NULL,
	[Hovaten] [nvarchar](50) NULL,
	[Gioitinh] [bit] NULL,
	[Quyen] [nvarchar](20) NULL,
	[SDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_Taikhoan] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Diennuoc] ([Maphong], [Thang], [CScudien], [CSmoidien], [CScunuoc], [CSmoinuoc]) VALUES (N'MPA2', CAST(N'2017-06-14' AS Date), 100, 145, 15, 20)
INSERT [dbo].[Diennuoc] ([Maphong], [Thang], [CScudien], [CSmoidien], [CScunuoc], [CSmoinuoc]) VALUES (N'MPA3', CAST(N'2017-06-16' AS Date), 100, 9999, 19, 18)
INSERT [dbo].[Diennuoc] ([Maphong], [Thang], [CScudien], [CSmoidien], [CScunuoc], [CSmoinuoc]) VALUES (N'MPB1', CAST(N'2017-06-14' AS Date), 100, 120, 10, 12)
INSERT [dbo].[Khu] ([MaKhu], [Tenkhu]) VALUES (N'MKA', N'Khu A')
INSERT [dbo].[Khu] ([MaKhu], [Tenkhu]) VALUES (N'MKB', N'Khu B')
INSERT [dbo].[Khu] ([MaKhu], [Tenkhu]) VALUES (N'MKC', N'Khu C')
INSERT [dbo].[Khu] ([MaKhu], [Tenkhu]) VALUES (N'MKD', N'Khu D')
INSERT [dbo].[Phong] ([MaPhong], [MaKhu], [Tenphong], [Loaiphong], [Songuoihientai], [Songuoitoida]) VALUES (N'MPA1.1', N'MKA', N'PhongA', 1, 2, 4)
INSERT [dbo].[Phong] ([MaPhong], [MaKhu], [Tenphong], [Loaiphong], [Songuoihientai], [Songuoitoida]) VALUES (N'MPA2', N'MKB', N'A2.2', 1, 2, 4)
INSERT [dbo].[Phong] ([MaPhong], [MaKhu], [Tenphong], [Loaiphong], [Songuoihientai], [Songuoitoida]) VALUES (N'MPA3', N'MKA', N'A3.1', 1, 0, 4)
INSERT [dbo].[Phong] ([MaPhong], [MaKhu], [Tenphong], [Loaiphong], [Songuoihientai], [Songuoitoida]) VALUES (N'MPA4', N'MKA', N'A4.1', 1, 0, 4)
INSERT [dbo].[Phong] ([MaPhong], [MaKhu], [Tenphong], [Loaiphong], [Songuoihientai], [Songuoitoida]) VALUES (N'MPB1', N'MKB', N'B1.1', 1, 3, 4)
INSERT [dbo].[Phong] ([MaPhong], [MaKhu], [Tenphong], [Loaiphong], [Songuoihientai], [Songuoitoida]) VALUES (N'MPC1', N'MKC', N'C1.1', 0, 0, 4)
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MP14', N'MKTX14', N'HHGHG', N'HGHGHG', N'665656', 1, CAST(N'1996-04-04' AS Date), N'86586586', N'QANGK', CAST(N'2017-06-14' AS Date), N'MPA2', N'FDSS', N'FGHHD', N'45252', N'ME', N'SDGF')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV01', N'MKTX01', N'TRAN', N'THUAN', N'2345678', 0, CAST(N'1996-01-05' AS Date), N'423424242', N'HUE', CAST(N'2017-06-12' AS Date), N'MPA2', N'', N'TRAN', N'HOA', N'HUE', N'GIÁO VIÊN')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV02', N'MKTX02', N'PHAM', N'CHANH', N'2345678', 0, CAST(N'1997-01-05' AS Date), N'423424232', N'QUANG TRI', CAST(N'2017-06-12' AS Date), N'MPA3', N'', N'PHAM', N'HOAI', N'QUANG TRI', N'NONG')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV03', N'MKTX03', N'NGUYÊN', N'LUU', N'232456', 1, CAST(N'1996-02-12' AS Date), N'12345', N'HUE', CAST(N'2017-02-02' AS Date), N'MPA2', N'1234', N'DFSD', N'3131', N'CHA', N'GIAOVIEN')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV04', N'MKTX04', N'NGO', N'BAO', N'455788667', 0, CAST(N'1997-04-03' AS Date), N'01635286957', N'QB', CAST(N'2017-06-12' AS Date), N'MPB1', N'HINH 1', N'NGO', N'THONG', N'QB', N'NONG')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV05', N'MKTX05', N'PHAM DUY', N'NHAT', N'44234121', 0, CAST(N'1997-01-10' AS Date), N'4232323232', N'QN', CAST(N'2017-06-12' AS Date), N'MPA4', N'HINH2', N'PHAM BIEN', N'342423', N'QN', N'NONG')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV06', N'MKTX06', N'DƯƠNG', N'DƯƠNG', N'2344242', 1, CAST(N'1998-03-12' AS Date), N'3242342', N'HÀ N?I', CAST(N'2017-06-12' AS Date), N'MPA4', N'HINH2', N'PH?M TH? THƯ', N'34242342', N'HÀ N?I', N'GIÁO VIÊN')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV07', N'MKTX07', N'NGUY?N VĂN', N'TÂM', N'24253535', 1, CAST(N'1996-03-05' AS Date), N'01784937222', N'HU?', CAST(N'2017-06-13' AS Date), N'MPB1', N'HINH3 ', N'NGUY?N B?NH', N'01738934537', N'HU?', N'CÔNG AN')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV08', N'MKTX08', N'NGUY?N ', N'HOÀI', N'372958390', 1, CAST(N'1997-04-04' AS Date), N'018375273522', N'QUANG NGAI', CAST(N'2017-06-13' AS Date), N'MPB1', N'HINH 2', N'TR?N TH? L?', N'017285261863', N'QUANG NGAI', N'GIÁO VIÊN')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV09', N'MKTX09', N'TRƯƠNG VĂN', N'DANH', N'232617286', 1, CAST(N'1997-03-09' AS Date), N'0167', N'QUANG BINH', CAST(N'2017-06-13' AS Date), N'MPA2', N'HINHW', N'TRƯƠNG THƯ', N'018297', N'QUANG BINH', N'NÔNG')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV10', N'MKTX10', N'PHAM GIA', N'HUY', N'121323', 1, CAST(N'1998-03-05' AS Date), N'182182', N'VUNG TAU', CAST(N'2017-06-13' AS Date), N'MPA3', N'HINH 4', N'PHAM TUNG', N'423131', N'VUNG TAU', N'GIAO VIEN')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV11', N'MKTX11', N'NGUYEN HOAI', N'NAM', N'2342', 1, CAST(N'1997-04-06' AS Date), N'32424', N'KHANH HOA', CAST(N'2017-06-13' AS Date), N'MPA3', N'HINH 5', N'NGUYEN THI THU', N'342444', N'KHANH HOA', N'GIAO VIEN')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV13', N'MKTX13', N'LLNKLKN', N'NLKNKN', N'76565', 1, CAST(N'1997-03-06' AS Date), N'65658', N'HHGHG', CAST(N'2017-06-14' AS Date), N'MPB1', N'', N'DFGFG', N'5233423', N'FSFSDF', N'DFDF')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV15', N'MKTX15', N'FSDSF', N'SFDSDF', N'4523', 1, CAST(N'1998-04-06' AS Date), N'45232', N'SDFSF', CAST(N'2017-06-14' AS Date), N'MPB1', N'', N'SFF', N'2353423', N'SDFSF', N'DFAF')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV16', N'MKTX16', N'JKJHKJ', N'KJBKJ', N'BKJBKB', 1, CAST(N'1999-05-05' AS Date), N'JBJKBKJB', N'QNGAI', CAST(N'2017-06-14' AS Date), N'MPB1', N'ADADA', N'FSF', N'ADADA', N'QNGAI', N'ĐÂ')
INSERT [dbo].[SV] ([MaSV], [MaKTX], [Ho], [Ten], [CMND], [Gioitinh], [Ngaysinh], [SDT], [Quequan], [Ngaylamhopdong], [MaPhong], [Hinh], [Hotengh], [Sdtgh], [Quanhe], [Nghenghiep]) VALUES (N'MSV17', N'MKTX17', N'NGUYỄN', N'KHANG', N'37291038', 1, CAST(N'1997-06-08' AS Date), N'01672965478', N'qNGAI', CAST(N'2017-02-05' AS Date), N'MPA2', N'HINH3', N'NGUYỄN CHÁNH', N'0163758492', N'CHA', N'NÔNG')
INSERT [dbo].[Taikhoan] ([username], [Pass], [Hovaten], [Gioitinh], [Quyen], [SDT]) VALUES (N'linh', N'123', N'Nguyễn Thị Mỹ LInh', 0, N'Admin', N'1672987444')
ALTER TABLE [dbo].[Diennuoc]  WITH CHECK ADD  CONSTRAINT [FK_Diennuoc_Phong] FOREIGN KEY([Maphong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[Diennuoc] CHECK CONSTRAINT [FK_Diennuoc_Phong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_Khu] FOREIGN KEY([MaKhu])
REFERENCES [dbo].[Khu] ([MaKhu])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_Khu]
GO
ALTER TABLE [dbo].[SV]  WITH CHECK ADD  CONSTRAINT [FK_SV_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[SV] CHECK CONSTRAINT [FK_SV_Phong]
GO
USE [master]
GO
ALTER DATABASE [QLKTX] SET  READ_WRITE 
GO
