USE [QLSV]
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K01       ', N'Công nghệ thông tin')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K02       ', N'Khoa học máy tính')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K03       ', N'Kinh tế')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K04       ', N'Điện tử viễn thông')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'K05       ', N'Quản trị kinh doanh')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM01      ', N'Lập trình', N'K01       ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM02      ', N'Mạng máy tính', N'K01       ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM03      ', N'Hệ thống thông tin', N'K02       ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM04      ', N'Tài chính', N'K03       ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'BM05      ', N'Điện tử số', N'K04       ')
GO
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'GV01      ', N'Nguyễn Văn A', CAST(N'1980-05-10' AS Date), N'BM01      ')
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'GV02      ', N'Trần Thị B', CAST(N'1985-07-12' AS Date), N'BM02      ')
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'GV03      ', N'Lê Văn C', CAST(N'1978-09-20' AS Date), N'BM03      ')
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'GV04      ', N'Phạm Thị D', CAST(N'1983-11-25' AS Date), N'BM04      ')
INSERT [dbo].[GiaoVien] ([maGV], [hoTen], [NgaySinh], [maBM]) VALUES (N'GV05      ', N'Hoàng Văn E', CAST(N'1990-03-30' AS Date), N'BM05      ')
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L01       ', N'Kỹ thuật phần mềm K1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L02       ', N'Mạng máy tính K2')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L03       ', N'Quản trị kinh doanh K3')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L04       ', N'Tài chính K4')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'L05       ', N'Công nghệ điện tử K5')
GO
SET IDENTITY_INSERT [dbo].[GVCN] ON 

INSERT [dbo].[GVCN] ([id], [maLop], [maGV], [HK]) VALUES (1, N'L01       ', N'GV01      ', N'HK1       ')
INSERT [dbo].[GVCN] ([id], [maLop], [maGV], [HK]) VALUES (2, N'L02       ', N'GV02      ', N'HK1       ')
INSERT [dbo].[GVCN] ([id], [maLop], [maGV], [HK]) VALUES (3, N'L03       ', N'GV03      ', N'HK2       ')
INSERT [dbo].[GVCN] ([id], [maLop], [maGV], [HK]) VALUES (4, N'L04       ', N'GV04      ', N'HK2       ')
INSERT [dbo].[GVCN] ([id], [maLop], [maGV], [HK]) VALUES (5, N'L05       ', N'GV05      ', N'HK3       ')
SET IDENTITY_INSERT [dbo].[GVCN] OFF
GO
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'MH01      ', N'Lập trình C++', 3)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'MH02      ', N'Cấu trúc dữ liệu', 4)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'MH03      ', N'Mạng máy tính', 3)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'MH04      ', N'Kinh tế vi mô', 3)
INSERT [dbo].[MonHoc] ([maMon], [tenMon], [STC]) VALUES (N'MH05      ', N'Điện tử số', 4)
GO
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP01     ', N'Lập trình C++ K1', N'HK1       ', N'MH01      ', N'GV01      ')
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP02     ', N'Cấu trúc dữ liệu K1', N'HK1       ', N'MH02      ', N'GV02      ')
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP03     ', N'Mạng máy tính K2', N'HK2       ', N'MH03      ', N'GV03      ')
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP04     ', N'Kinh tế vi mô K3', N'HK3       ', N'MH04      ', N'GV04      ')
INSERT [dbo].[LopHP] ([maLopHP], [tenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP05     ', N'Điện tử số K5', N'HK3       ', N'MH05      ', N'GV05      ')
GO
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'SV01      ', N'Nguyễn Văn An', CAST(N'2003-01-15' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'SV02      ', N'Phạm Thị Bình', CAST(N'2002-05-20' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'SV03      ', N'Lê Văn Cường', CAST(N'2003-07-25' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'SV04      ', N'Trần Thị Dung', CAST(N'2001-09-10' AS Date))
INSERT [dbo].[SinhVien] ([maSV], [hoTen], [NgaySinh]) VALUES (N'SV05      ', N'Hoàng Văn Em', CAST(N'2002-12-05' AS Date))
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L01       ', N'SV01      ', N'Lớp trưởng')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L01       ', N'SV02      ', N'Lớp phó')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L02       ', N'SV03      ', N'Bí thư')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L03       ', N'SV04      ', N'Thành viên')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'L04       ', N'SV05      ', N'Thành viên')
GO
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (1, N'LHP01     ', N'SV01      ', 8.5, 8, 50)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (2, N'LHP02     ', N'SV02      ', 7, 8.5, 50)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (3, N'LHP03     ', N'SV03      ', 6.5, 7.5, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (4, N'LHP04     ', N'SV04      ', 9, 9.5, 40)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemTP], [DiemThi], [PhanTramThi]) VALUES (5, N'LHP05     ', N'SV05      ', 8, 7, 50)
GO
