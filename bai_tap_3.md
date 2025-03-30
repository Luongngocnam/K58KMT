BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:  
DEADLINE: 23H59 NGÀY 30/03/2025  
ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)  
BÀI TOÁN: Sửa bài 2 để có csdl như sau:  
  + SinhVien(#masv,hoten,NgaySinh)  
  + Lop(#maLop,tenLop)  
  + GVCN(#@maLop,#@magv,#HK)  
  + LopSV(#@maLop,#@maSV,ChucVu)  
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)  
  + BoMon(#MaBM,tenBM,@maKhoa)  
  + Khoa(#maKhoa,tenKhoa)  
  + MonHoc(#mamon,Tenmon,STC)  
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)  
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)  
  + Diem(#id, @id_dk, diem)  
YÊU CẦU:  
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.  
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)  
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
4. 
   ----------------------------------------- Bài Làm -----------------------------------------
   
chỉnh sửa lại bảng DKMH có khoá chính là id_dk.
![Ảnh chụp màn hình 2025-03-30 132903](https://github.com/user-attachments/assets/cc7433fd-d69b-432c-b46d-f3ce4cd29f6d)

Tạo bảng Diem với các nội dung đầu bài  
có khoá chính là id
lưu bảng với tên là Diem 
![image](https://github.com/user-attachments/assets/389ce290-cab3-433f-804d-bb0da6cf26b3)

Mở bảng Diem → chọn Design.  
Chuột phải trong giao diện → chọn Relationships....  
Nhấn Add để thêm khóa ngoại.  
Trong Tables and Columns Specification  
Primary key table: DKMH (bảng chính).  
Foreign key table: Diem (bảng phụ), liên kết cột id_dk.  
Nhấn OK để lưu quan hệ.  
![image](https://github.com/user-attachments/assets/24a25609-5af3-4d62-80c2-8909d7af03af)

Nhập dữ liệu cho các bảng
![image](https://github.com/user-attachments/assets/07c2510f-35e0-4b2b-9354-8280643da70b)

Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
![Ảnh chụp màn hình 2025-03-30 152858](https://github.com/user-attachments/assets/ebc752e0-e7ed-4ff8-bd2d-f3ce49e98d3f)

Mở SSMS, kết nối đến SQL Server và chọn cơ sở dữ liệu (QLSV).
Chuột phải vào "Database Diagrams" → Chọn "New Database Diagram".
![image](https://github.com/user-attachments/assets/4c55d3c1-61fc-43db-b80f-3af6f44f217c)

Chọn các bảng bạn muốn hiển thị trong sơ đồ, rồi nhấn "Add".
![image](https://github.com/user-attachments/assets/85323826-7d2f-437d-82aa-b006d2995de3)

Sắp xếp quan hệ giữa các bảng theo ý muốn.
Lưu sơ đồ bằng cách nhấn Ctrl + S.
![image](https://github.com/user-attachments/assets/87fa56f4-f819-4d7a-9f68-965242b8b6f8)

Tạo file bai_tap_3_schema.sql (chứa cấu trúc database)
Mở SSMS và kết nối với SQL Server.
Chọn database QLSV trong Object Explorer.
Nhấp chuột phải vào QLSV → Chọn Tasks → Chọn Generate Scripts...
![image](https://github.com/user-attachments/assets/22522d3b-1aee-4b3b-a011-fa4eb50fb043)

Next 2 bước kế tiếp
![image](https://github.com/user-attachments/assets/70d96db3-e4d6-4eaa-9cb1-f1bf3a001583)

Ở bước Set Scripting Options, nhấn Advanced.
Trong danh sách Options, tìm đến mục:
Types of data to script → Chọn Schema only
Nhấn OK để lưu thay đổi.
![image](https://github.com/user-attachments/assets/60e7968a-f30e-46f9-a740-2ccfc79db839)

Ở phần Specify how scripts should be saved:
Chọn Save as script file
Nhấn Browse để chọn thư mục lưu file
Đặt tên file là bài3 schema.sql
Nhấn Next 
![image](https://github.com/user-attachments/assets/d03a994d-6741-48e6-a210-4ff574e944aa)

Nhấn Next.
![image](https://github.com/user-attachments/assets/2b40e979-c26c-4639-93e2-a27d4aaacecb)

Nhấn Finish để hoàn tất.
![image](https://github.com/user-attachments/assets/a553b5fe-83c3-4cd6-bdf5-47f533e178b9)

Lập lại các bước của thao tác tạo Tạo file bai3schema.sql 
đén bước Cấu hình xuất file SQL chỉ chứa dữ liệu Ở bước Set Scripting Options, nhấn Advanced.
Trong danh sách Options, tìm đến mục:
Types of data to script → Chọn Data only
Nhấn OK để lưu thay đổi.
![image](https://github.com/user-attachments/assets/a8ec8048-471c-474e-af7c-cebcfeea107c)

Nhấn Next.
![image](https://github.com/user-attachments/assets/dda76e65-2a61-4615-8bd1-2f9b410d6eee)

Nhấn Finish để hoàn tất.
![image](https://github.com/user-attachments/assets/861d0035-4e04-4c51-a58e-965abcbb7e83)

Cuối cùng ta thu được 2 file như hình dưới.
![image](https://github.com/user-attachments/assets/cf537704-64e4-45bd-b168-ff567b3b75db)

















   
