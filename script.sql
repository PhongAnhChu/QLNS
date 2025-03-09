USE [master]
GO
/****** Object:  Database [QLNS_2]    Script Date: 3/9/2025 4:36:55 PM ******/
CREATE DATABASE [QLNS_2]
GO
ALTER DATABASE [QLNS_2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNS_2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNS_2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNS_2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNS_2] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNS_2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNS_2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNS_2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNS_2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNS_2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNS_2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNS_2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNS_2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNS_2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNS_2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNS_2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNS_2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNS_2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNS_2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNS_2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNS_2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNS_2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNS_2] SET RECOVERY FULL 
GO
ALTER DATABASE [QLNS_2] SET  MULTI_USER 
GO
ALTER DATABASE [QLNS_2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNS_2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNS_2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNS_2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNS_2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNS_2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLNS_2', N'ON'
GO
ALTER DATABASE [QLNS_2] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLNS_2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLNS_2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/9/2025 4:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChamCongs]    Script Date: 3/9/2025 4:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCongs](
	[MaChamCong] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[NgayLam] [datetime2](7) NOT NULL,
	[GioVaoLam] [time](7) NOT NULL,
	[GioKetThuc] [time](7) NOT NULL,
 CONSTRAINT [PK_ChamCongs] PRIMARY KEY CLUSTERED 
(
	[MaChamCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luongs]    Script Date: 3/9/2025 4:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luongs](
	[MaLuong] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[Thang] [int] NOT NULL,
	[Nam] [int] NOT NULL,
	[TienTangCa] [decimal](12, 2) NOT NULL,
	[KhoanTru] [decimal](12, 2) NOT NULL,
	[LuongThucNhan] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_Luongs] PRIMARY KEY CLUSTERED 
(
	[MaLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDungs]    Script Date: 3/9/2025 4:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDungs](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NguoiDungs] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanViens]    Script Date: 3/9/2025 4:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanViens](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTenNV] [nvarchar](100) NOT NULL,
	[NgaySinh] [datetime2](7) NOT NULL,
	[GioiTinh] [nvarchar](max) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDT] [nvarchar](max) NOT NULL,
	[NgayVaoLam] [datetime2](7) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[MaNguoiDung] [int] NULL,
	[MaPhongBan] [int] NOT NULL,
	[MaViTri] [int] NOT NULL,
 CONSTRAINT [PK_NhanViens] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBans]    Script Date: 3/9/2025 4:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBans](
	[MaPhongBan] [int] IDENTITY(1,1) NOT NULL,
	[TenPhongBan] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PhongBans] PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViTriCongViecs]    Script Date: 3/9/2025 4:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTriCongViecs](
	[MaViTri] [int] IDENTITY(1,1) NOT NULL,
	[TenViTri] [nvarchar](100) NOT NULL,
	[HeSoLuong] [decimal](3, 2) NOT NULL,
 CONSTRAINT [PK_ViTriCongViecs] PRIMARY KEY CLUSTERED 
(
	[MaViTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuCauNghiPheps]    Script Date: 3/9/2025 4:36:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuCauNghiPheps](
	[MaNghiPhep] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[NgayBatDau] [datetime2](7) NOT NULL,
	[NgayKetThuc] [datetime2](7) NOT NULL,
	[TongSoNgay] [int] NOT NULL,
	[LyDo] [nvarchar](max) NOT NULL,
	[TinhTrang] [nvarchar](max) NULL,
 CONSTRAINT [PK_YeuCauNghiPheps] PRIMARY KEY CLUSTERED 
(
	[MaNghiPhep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250301155035_InitialCreate', N'9.0.2')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250302041900_UpdateHeSoLuong', N'9.0.2')
GO
SET IDENTITY_INSERT [dbo].[ChamCongs] ON 
GO
INSERT [dbo].[ChamCongs] ([MaChamCong], [MaNhanVien], [NgayLam], [GioVaoLam], [GioKetThuc]) VALUES (2, 3, CAST(N'2025-03-02T00:00:00.0000000' AS DateTime2), CAST(N'09:59:00' AS Time), CAST(N'20:57:00' AS Time))
GO
INSERT [dbo].[ChamCongs] ([MaChamCong], [MaNhanVien], [NgayLam], [GioVaoLam], [GioKetThuc]) VALUES (5, 3, CAST(N'2025-03-12T00:00:00.0000000' AS DateTime2), CAST(N'07:26:00' AS Time), CAST(N'17:28:00' AS Time))
GO
INSERT [dbo].[ChamCongs] ([MaChamCong], [MaNhanVien], [NgayLam], [GioVaoLam], [GioKetThuc]) VALUES (6, 3, CAST(N'2025-03-04T00:00:00.0000000' AS DateTime2), CAST(N'18:36:00' AS Time), CAST(N'18:40:00' AS Time))
GO
INSERT [dbo].[ChamCongs] ([MaChamCong], [MaNhanVien], [NgayLam], [GioVaoLam], [GioKetThuc]) VALUES (7, 3, CAST(N'2025-03-06T00:00:00.0000000' AS DateTime2), CAST(N'08:40:00' AS Time), CAST(N'09:40:00' AS Time))
GO
INSERT [dbo].[ChamCongs] ([MaChamCong], [MaNhanVien], [NgayLam], [GioVaoLam], [GioKetThuc]) VALUES (8, 3, CAST(N'2025-02-06T00:00:00.0000000' AS DateTime2), CAST(N'08:15:00' AS Time), CAST(N'19:16:00' AS Time))
GO
INSERT [dbo].[ChamCongs] ([MaChamCong], [MaNhanVien], [NgayLam], [GioVaoLam], [GioKetThuc]) VALUES (9, 3, CAST(N'2025-02-13T00:00:00.0000000' AS DateTime2), CAST(N'09:16:00' AS Time), CAST(N'17:16:00' AS Time))
GO
INSERT [dbo].[ChamCongs] ([MaChamCong], [MaNhanVien], [NgayLam], [GioVaoLam], [GioKetThuc]) VALUES (12, 8, CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), CAST(N'08:06:00' AS Time), CAST(N'18:06:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[ChamCongs] OFF
GO
SET IDENTITY_INSERT [dbo].[Luongs] ON 
GO
INSERT [dbo].[Luongs] ([MaLuong], [MaNhanVien], [Thang], [Nam], [TienTangCa], [KhoanTru], [LuongThucNhan]) VALUES (7, 3, 2, 2025, CAST(25333.33 AS Decimal(12, 2)), CAST(15166.67 AS Decimal(12, 2)), CAST(617423.08 AS Decimal(12, 2)))
GO
INSERT [dbo].[Luongs] ([MaLuong], [MaNhanVien], [Thang], [Nam], [TienTangCa], [KhoanTru], [LuongThucNhan]) VALUES (10, 6, 3, 2025, CAST(0.00 AS Decimal(12, 2)), CAST(20666.67 AS Decimal(12, 2)), CAST(2664897.44 AS Decimal(12, 2)))
GO
INSERT [dbo].[Luongs] ([MaLuong], [MaNhanVien], [Thang], [Nam], [TienTangCa], [KhoanTru], [LuongThucNhan]) VALUES (11, 3, 3, 2025, CAST(60833.33 AS Decimal(12, 2)), CAST(200166.67 AS Decimal(12, 2)), CAST(2280230.77 AS Decimal(12, 2)))
GO
INSERT [dbo].[Luongs] ([MaLuong], [MaNhanVien], [Thang], [Nam], [TienTangCa], [KhoanTru], [LuongThucNhan]) VALUES (12, 8, 3, 2025, CAST(11000.00 AS Decimal(12, 2)), CAST(1000.00 AS Decimal(12, 2)), CAST(156230.77 AS Decimal(12, 2)))
GO
SET IDENTITY_INSERT [dbo].[Luongs] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDungs] ON 
GO
INSERT [dbo].[NguoiDungs] ([MaNguoiDung], [TenDangNhap], [MatKhau]) VALUES (2, N'admin', N'123')
GO
INSERT [dbo].[NguoiDungs] ([MaNguoiDung], [TenDangNhap], [MatKhau]) VALUES (4, N'trien', N'1')
GO
INSERT [dbo].[NguoiDungs] ([MaNguoiDung], [TenDangNhap], [MatKhau]) VALUES (5, N'user2', N'2')
GO
INSERT [dbo].[NguoiDungs] ([MaNguoiDung], [TenDangNhap], [MatKhau]) VALUES (6, N'an1', N'1')
GO
INSERT [dbo].[NguoiDungs] ([MaNguoiDung], [TenDangNhap], [MatKhau]) VALUES (7, N'user2', N'1')
GO
SET IDENTITY_INSERT [dbo].[NguoiDungs] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanViens] ON 
GO
INSERT [dbo].[NhanViens] ([MaNhanVien], [HoTenNV], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [NgayVaoLam], [Email], [MaNguoiDung], [MaPhongBan], [MaViTri]) VALUES (3, N'Đào Quang Triển', CAST(N'2025-03-02T00:00:00.0000000' AS DateTime2), N'Nam', N'1112', N'11', CAST(N'2025-03-02T00:00:00.0000000' AS DateTime2), N'bienhanoi123@gmail.com', 4, 1, 4)
GO
INSERT [dbo].[NhanViens] ([MaNhanVien], [HoTenNV], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [NgayVaoLam], [Email], [MaNguoiDung], [MaPhongBan], [MaViTri]) VALUES (6, N'Ánh', CAST(N'2025-03-02T00:00:00.0000000' AS DateTime2), N'Nữ', N'A', N'12342', CAST(N'2025-03-02T00:00:00.0000000' AS DateTime2), N'bienhanoi123@gmail.com', 5, 1, 5)
GO
INSERT [dbo].[NhanViens] ([MaNhanVien], [HoTenNV], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [NgayVaoLam], [Email], [MaNguoiDung], [MaPhongBan], [MaViTri]) VALUES (7, N'Đào Quang Biên', CAST(N'2004-06-16T00:00:00.0000000' AS DateTime2), N'Nam', N'Hà Nội', N'0123456789', CAST(N'2025-01-08T00:00:00.0000000' AS DateTime2), N'bien@gmail.com', 2, 2, 4)
GO
INSERT [dbo].[NhanViens] ([MaNhanVien], [HoTenNV], [NgaySinh], [GioiTinh], [DiaChi], [SoDT], [NgayVaoLam], [Email], [MaNguoiDung], [MaPhongBan], [MaViTri]) VALUES (8, N'Nguyễn Văn An', CAST(N'2025-01-01T00:00:00.0000000' AS DateTime2), N'Nữ', N'HCM', N'0123456789', CAST(N'2025-03-08T00:00:00.0000000' AS DateTime2), N'an@gmail.com', 6, 2, 6)
GO
SET IDENTITY_INSERT [dbo].[NhanViens] OFF
GO
SET IDENTITY_INSERT [dbo].[PhongBans] ON 
GO
INSERT [dbo].[PhongBans] ([MaPhongBan], [TenPhongBan]) VALUES (1, N'Kỹ thuật')
GO
INSERT [dbo].[PhongBans] ([MaPhongBan], [TenPhongBan]) VALUES (2, N'Nhân sự')
GO
INSERT [dbo].[PhongBans] ([MaPhongBan], [TenPhongBan]) VALUES (3, N'Kinh doanh')
GO
SET IDENTITY_INSERT [dbo].[PhongBans] OFF
GO
SET IDENTITY_INSERT [dbo].[ViTriCongViecs] ON 
GO
INSERT [dbo].[ViTriCongViecs] ([MaViTri], [TenViTri], [HeSoLuong]) VALUES (4, N'Giám đốc', CAST(3.00 AS Decimal(3, 2)))
GO
INSERT [dbo].[ViTriCongViecs] ([MaViTri], [TenViTri], [HeSoLuong]) VALUES (5, N'Trưởng phòng', CAST(2.50 AS Decimal(3, 2)))
GO
INSERT [dbo].[ViTriCongViecs] ([MaViTri], [TenViTri], [HeSoLuong]) VALUES (6, N'Nhân viên', CAST(1.50 AS Decimal(3, 2)))
GO
SET IDENTITY_INSERT [dbo].[ViTriCongViecs] OFF
GO
SET IDENTITY_INSERT [dbo].[YeuCauNghiPheps] ON 
GO
INSERT [dbo].[YeuCauNghiPheps] ([MaNghiPhep], [MaNhanVien], [NgayBatDau], [NgayKetThuc], [TongSoNgay], [LyDo], [TinhTrang]) VALUES (2, 6, CAST(N'2025-03-03T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-12T00:00:00.0000000' AS DateTime2), 10, N'da', N'Đã Duyệt')
GO
INSERT [dbo].[YeuCauNghiPheps] ([MaNghiPhep], [MaNhanVien], [NgayBatDau], [NgayKetThuc], [TongSoNgay], [LyDo], [TinhTrang]) VALUES (3, 3, CAST(N'2025-03-13T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-15T00:00:00.0000000' AS DateTime2), 3, N'dsa', N'Đã Duyệt')
GO
INSERT [dbo].[YeuCauNghiPheps] ([MaNghiPhep], [MaNhanVien], [NgayBatDau], [NgayKetThuc], [TongSoNgay], [LyDo], [TinhTrang]) VALUES (4, 8, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-13T00:00:00.0000000' AS DateTime2), 4, N'sad', N'Chờ Duyệt')
GO
SET IDENTITY_INSERT [dbo].[YeuCauNghiPheps] OFF
GO
/****** Object:  Index [IX_ChamCongs_MaNhanVien]    Script Date: 3/9/2025 4:36:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChamCongs_MaNhanVien] ON [dbo].[ChamCongs]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Luongs_MaNhanVien]    Script Date: 3/9/2025 4:36:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Luongs_MaNhanVien] ON [dbo].[Luongs]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanViens_MaNguoiDung]    Script Date: 3/9/2025 4:36:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_NhanViens_MaNguoiDung] ON [dbo].[NhanViens]
(
	[MaNguoiDung] ASC
)
WHERE ([MaNguoiDung] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanViens_MaPhongBan]    Script Date: 3/9/2025 4:36:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_NhanViens_MaPhongBan] ON [dbo].[NhanViens]
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanViens_MaViTri]    Script Date: 3/9/2025 4:36:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_NhanViens_MaViTri] ON [dbo].[NhanViens]
(
	[MaViTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_YeuCauNghiPheps_MaNhanVien]    Script Date: 3/9/2025 4:36:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_YeuCauNghiPheps_MaNhanVien] ON [dbo].[YeuCauNghiPheps]
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChamCongs]  WITH CHECK ADD  CONSTRAINT [FK_ChamCongs_NhanViens_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChamCongs] CHECK CONSTRAINT [FK_ChamCongs_NhanViens_MaNhanVien]
GO
ALTER TABLE [dbo].[Luongs]  WITH CHECK ADD  CONSTRAINT [FK_Luongs_NhanViens_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Luongs] CHECK CONSTRAINT [FK_Luongs_NhanViens_MaNhanVien]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NhanViens_NguoiDungs_MaNguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDungs] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NhanViens_NguoiDungs_MaNguoiDung]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NhanViens_PhongBans_MaPhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBans] ([MaPhongBan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NhanViens_PhongBans_MaPhongBan]
GO
ALTER TABLE [dbo].[NhanViens]  WITH CHECK ADD  CONSTRAINT [FK_NhanViens_ViTriCongViecs_MaViTri] FOREIGN KEY([MaViTri])
REFERENCES [dbo].[ViTriCongViecs] ([MaViTri])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanViens] CHECK CONSTRAINT [FK_NhanViens_ViTriCongViecs_MaViTri]
GO
ALTER TABLE [dbo].[YeuCauNghiPheps]  WITH CHECK ADD  CONSTRAINT [FK_YeuCauNghiPheps_NhanViens_MaNhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanViens] ([MaNhanVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YeuCauNghiPheps] CHECK CONSTRAINT [FK_YeuCauNghiPheps_NhanViens_MaNhanVien]
GO
USE [master]
GO
ALTER DATABASE [QLNS_2] SET  READ_WRITE 
GO
