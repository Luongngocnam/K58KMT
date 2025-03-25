# K58KMT
**Bài tập 02 của sv:K225480106049-Lương Ngọc Nam-Môn Hệ quản trị csdl**

**BÀI TOÁN:**
 1. Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

**YÊU CẦU:**
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql

Nhấp chuột phải vào Databases → Chọn New Databaseđể tạo cơ sở dữ liệu mới
![image](https://github.com/user-attachments/assets/f8ac9144-c1fa-42c5-84f3-4056d8ef48ef)

Nhập tên cơ sở dữ liệu vào ô Database name.
Kiểm tra đường dẫn lưu trữ tập tin dữ liệu và log trong cột Path .
Nhấn OK để tạo cơ sở dữ liệu.
![1](https://github.com/user-attachments/assets/7da0d4c9-f004-4632-acac-05ab88589c3d)

Nhấp chuột phải vào Tables trong cơ sở dữ liệu QLSV → Chọn New → Table để tạo bảng mới.
![image](https://github.com/user-attachments/assets/9205a272-b738-4a26-9835-70b506e246ce)

1. Tạo bảng "Sinhvien" có các cột:

  + Masv (varchar(13)) – Khóa chính.
  + Hoten (nvarchar(50)) Cho phép NULL.
  + Ngaysinh (date) Cho phép NULL.
  + Lưu bảng (Ctrl + S), đặt tên sinhvien → OK.
![image](https://github.com/user-attachments/assets/05ce0dc2-03c8-44a6-966f-5c5be1e23818)

2. Tạo bảng "Lop" có các cột:

  + Malop (varchar(50)) – Khóa chính
  + Tenlop (varchar(50)) Cho phép NULL.
  + Lưu bảng (Ctrl + S), đặt tên lop → OK.
![image](https://github.com/user-attachments/assets/473daadc-898b-4efe-8148-61da2ecd80ab)

3. Tạo bảng "GVCN" có các cột:

 + Malop (varchar(50)) – Khóa chính
 + Magv (varchar(50)) – Khóa chính
 + Hocky (int) – Khóa chính
 + Lưu bảng (Ctrl + S), đặt tên GVCN → OK.
![image](https://github.com/user-attachments/assets/9921679a-714d-4812-8e5e-fd67a1df1953)

4. Tạo bảng "Lopsv hiện có các cột:

 + Malop (varchar(50)) – Khóa chính
 + Masv (varchar(50)) – Khóa chính
 + Chucvu (nvarchar(50)) – Cho phép NULL
 + Lưu bảng (Ctrl + S), đặt tên lopSV → OK.
![image](https://github.com/user-attachments/assets/cca0b4a3-9363-4623-abc8-08c17ea29b8e)

5. Tạo bảng "Giaovien" hiện có các cột:

 + Magv (varchar(50), khóa chính).
 + Hoten (nvarchar(50), cho phép NULL).
 + Ngaysinh (date, cho phép NULL).
 + MaBM (varchar(50), Cho phép NULL .
 + Lưu bảng (Ctrl + S), đặt tên Giaovien → OK.
![image](https://github.com/user-attachments/assets/a7296624-7239-4435-bf45-ae6583c515e5)

6. Tạo bảng "Bomon" hiện có các cột:

 + MaBM (varchar(50), khóa chính, không NULL).
 + TenBM (varchar(50), cho phép NULL).
 + MaKhoa (varchar(50), Cho phép NULL .
 + Lưu bảng (Ctrl + S), đặt tên Bomon → OK.
![image](https://github.com/user-attachments/assets/e1f80b9a-b66c-42ca-8af7-515d2d21d369)

7. Tạo bảng "Khoa" hiện có các cột:

 + MaKhoa (varchar(50), khóa chính, không NULL).
 + TenKhoa (nvarchar(50), cho phép NULL).
 + Lưu bảng (Ctrl + S), đặt tên Khoa → OK.
![image](https://github.com/user-attachments/assets/dd18daa4-4935-4306-b383-b013dda2ca89)

8. Tạo bảng "MonHoc" hiện có các cột:

 + mamon (varchar(50), khóa chính, không NULL).
 + Tenmon (nvarchar(50), cho phép NULL).
 + STC (int), cho phep NULL.
 + Lưu bảng (Ctrl + S), đặt tên monhoc → OK.
![image](https://github.com/user-attachments/assets/d860ecd5-0b01-4fdc-bbef-bcb1c44a7e25)

9. Tạo bảng "LopHP" hiện có các cột:

 + malopHP (varchar(50), khóa chính, không NULL).
 + TenlopHP (nvarchar(50), cho phép NULL).
 + HK (int), cho phép NULL.
 + maMon (varchar(50), cho phép NULL).
 + maGV (varchar(50), cho phép NULL).
 + Lưu bảng (Ctrl + S), đặt tên LopHP → OK.
![image](https://github.com/user-attachments/assets/ce950e91-b5d1-42c7-b1cd-0ed236186489)

10. Tạo bảng "DKMH" hiện có các cột:

 + maLopHP (varchar(50), khóa chính, không NULL).
 + maSV (varchar(50), khóa chính, không NULL).
 + DiemTP (float), cho phép NULL.
 + DiemThi (float), cho phép NULL.
 + PhanTramTPhanTramThi (float), cho phép NULL.
 + Lưu bảng (Ctrl + S), đặt tên DKMH → OK.
![image](https://github.com/user-attachments/assets/f7c66012-82f2-430a-9792-1cf5dcdb6e34)

Nhấp chuột phải vào "Tables" trong Object Explorer.
Chọn "Refresh".
Điều này sẽ cập nhật danh sách các bảng hiện có trong cơ sở dữ liệu của bạn.
![image](https://github.com/user-attachments/assets/c8c9b3c7-b05a-40de-9896-7409a506f91e)

Nhấp chuột phải trên cột trong SQL Server Management Studio (SSMS) và chọn "Check Constraints..." để kiểm tra hoặc chỉnh sửa để kiểm tra hoặc chỉnh sửa việc kiểm tra (CHECK CONSTRAINTS) của bảng.
![image](https://github.com/user-attachments/assets/6244f093-ada2-4eed-8113-233a0559930b)

Kiểm tra ràng buộc trong SQL Server Management quản lý Ràngtrong SQL Server Management Studio (SSMS).
Ràng buộc kiểm tra CK_MonHoc được áp dụng STC > = 1 and STC <= 4 được áp dụng với biểu thức:
STC >= 1 và STC <= 4 , STC cột giá trị đảm bảo chỉ nằm trong khoảng từ 1 đến 4.
![image](https://github.com/user-attachments/assets/631827db-c0cd-4dbe-a43b-173b25a5ccba)

Trong ảnh, người dùng đang thiết lập khóa ngoại (Foreign Key) giữa hai bảng GVCN và Lop trong SQL Server Management Studio.
![image](https://github.com/user-attachments/assets/9f7441e2-01ce-481f-b024-adb1fa4f5830)

Lập khóa ngoại FK_GVCN_giaovien giữa bảng giaovien và GVCN trong SQL Server Management Studio. Cụ thể, cột magv trong bảng GVCN sẽ tham chiếu đến cột magv trong bảng giaovien
![image](https://github.com/user-attachments/assets/a9b3025c-4a97-445d-9a5c-16377d2a95e8)

Thiết lập khóa ngoại FK_lopsv_Sinhvien giữa bảng Sinhvien và lopsv trong SQL Server Management Studio. Cụ thể, cột masv trong bảng lopsv sẽ tham chiếu đến cột masv trong bảng Sinhvien.
![image](https://github.com/user-attachments/assets/160af20f-a125-469a-b82f-c8e5da22ec29)

Đang chỉnh sửa khóa ngoại FK_GVCN_giaovien giữa bảng giaovien và GVCN trong SQL Server Management Studio. Cụ thể, cột magv trong bảng GVCN sẽ tham chiếu đến cột magv trong bảng giaovien.
![image](https://github.com/user-attachments/assets/fa721406-05e4-4ab4-8497-4524ebd7c2d7)

Tạo khóa ngoại FK_bomon_khoa giữa bảng bomon và khoa trong SQL Server Management Studio. Cụ thể, cột makhoa trong bảng bomon sẽ tham chiếu đến cột makhoa trong bảng khoa.
![image](https://github.com/user-attachments/assets/47f023a6-894d-478f-8fa0-87c7b9af6d9c)

Đang tạo khóa ngoại FK_lophp_monhoc giữa bảng lophp và monhoc trong SQL Server Management Studio. Cụ thể, cột mamon trong bảng lophp sẽ tham chiếu đến cột mamon trong bảng monhoc.
![image](https://github.com/user-attachments/assets/a095b38a-396b-4ae7-8a02-f4840fb4a9a7)

Đang tạo khóa ngoại FK_dkmh_lophp giữa bảng dkmh và lophp trong SQL Server Management Studio. Cụ thể, cột malophp trong bảng dkmh sẽ tham chiếu đến cột malophp trong bảng lophp.
![image](https://github.com/user-attachments/assets/2ffc6276-3c6d-462c-b0ba-73de2291dd57)

Đang tạo khóa ngoại FK_dkmh_Sinhvien giữa bảng dkmh và Sinhvien trong SQL Server Management Studio. Cụ thể, cột masv trong bảng dkmh sẽ tham chiếu đến cột masv trong bảng Sinhvien.
![image](https://github.com/user-attachments/assets/7fe6077d-8cd6-4128-b0b5-fe06789f4410)

Đang tạo cơ sở dữ liệu QLSV trong SQL Server với:
![image](https://github.com/user-attachments/assets/4c30658b-8ddf-4b98-a928-515a16a10055)

Tạo cơ sở dữ liệu cho bảng khoa bằng lệnh SQL:
![image](https://github.com/user-attachments/assets/ff8df416-b530-4552-90f5-b0d3491712a5)

Tạo cơ sở dữ liệu cho bảng Bomon bằng lệnh SQL:
![image](https://github.com/user-attachments/assets/d5c5e945-0d46-4d80-a417-d9cddf9c0cb8)

Tạo cơ sở dữ liệu cho bảng Giaovien bằng lệnh SQL:
![image](https://github.com/user-attachments/assets/3c679dd6-fb90-4613-9ab9-c0a8221e51e7)

Tạo cơ sở dữ liệu cho bảng sinhvien bằng lệnh SQL:
![image](https://github.com/user-attachments/assets/ca407282-b55d-4251-b02a-e5f40c2f2b7e)

Tạo cơ sở dữ liệu cho bảng GVCN bằng lệnh SQL:
![image](https://github.com/user-attachments/assets/7408c0f4-e6fb-47ce-84ca-121d747b8d8f)

Tạo cơ sở dữ liệu cho bảng LopSV bằng lệnh SQL:
![image](https://github.com/user-attachments/assets/075ac62e-f598-4997-a355-260515d1c17a)

Tạo cơ sở dữ liệu cho bảng MonHoc bằng lệnh SQL:
![image](https://github.com/user-attachments/assets/c508fead-2061-42c3-ad84-02bdf81215ae)

Tạo cơ sở dữ liệu cho bảng LopHP bằng lệnh SQL:
![image](https://github.com/user-attachments/assets/560ff7b7-3daf-48ec-a7b4-0f7eb260a993)

Tạo cơ sở dữ liệu cho bảng DKMH bằng lệnh SQL:
![image](https://github.com/user-attachments/assets/1b050553-41a9-4fcf-a2bd-c3e18f07fa73)

Sau khi tạo song các bảng bằng lệnh SQL ta thu được các bảng dống hệt với các bảng toạ bằng thao tác đồ hoạ.
![image](https://github.com/user-attachments/assets/8e25b76e-365b-403b-a90e-62ccc6a3b8e9)

Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương
![image](https://github.com/user-attachments/assets/33b48329-83e8-4fb0-b914-ab449d23c84d)

Lệnh Sql sau khi chuyển từ thao tác đồ hoạ của bảng SinhVien:
![image](https://github.com/user-attachments/assets/b94f1192-8a9a-41b1-9e2e-35c937b2f142)

Các bảng còn lại tương tự như trêntrên

 











