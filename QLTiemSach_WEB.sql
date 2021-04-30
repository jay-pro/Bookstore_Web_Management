--Tạo database
create database QLTiemSach_WEB

use QLTiemSach_WEB
go

--Tạo bảng Quản lý
create table dbo.QUANLY(
	MaQL int primary key,
	TenQL nvarchar(50) not NULL,
	Email varchar(50) not NULL,
	Tuoi int not NULL,
	DiaChi nvarchar(100) not NULL,
	SDT char(10) not NULL,
	Luong int not NULL,
	HinhAnh nvarchar(MAX)
);
insert into QUANLY values(18110168,N'Bùi Hà Nhi','18110168@student.hcmute.edu.vn',20,N'Việt Nam','0908259937',10000000,'buihanhi_18110168.jpg')--10 triệu

--Tạo bảng Chi Nhánh
create table dbo.CHINHANH(
	MaCN int primary key,
	TenCN nvarchar(50) not NULL,
	DiaChi nvarchar(100) not NULL,
	SDT char(10) not NULL,
	MaQL int references QUANLY(MaQL)
);
insert into CHINHANH values(101,N'Little BookStore Cở Sở Thủ Đức',N'Quận Thủ Đức','0111222333',18110168)
insert into CHINHANH values(102,N'Little BookStore Cở Sở Bình Thạnh',N'Quận Bình Thuận','0222111333',18110168)

--Tạo bảng loại menu
create table dbo.LOAIMENU(
	MaLoai int primary key,
	TenLoai nvarchar(100) not NULL
);
insert into LOAIMENU values(1,N'Sách Trong Nước')
insert into LOAIMENU values(2,N'Sách Nước Ngoài')
insert into LOAIMENU values(3,N'Văn Phòng Phẩm')

--Tạo bảng Tác Gỉa
create table dbo.TACGIA(
	MaTacGia nvarchar(100),											--TG001
	TenTacGia nvarchar(100),									--Margery Williams
	QuocGia	nvarchar(100),											--United State
	primary key(MaTacGia)	
);
insert into	TACGIA values ('TG001','Margery Williams','My')
insert into	TACGIA values ('TG002','21st Century','Viet Nam')
insert into	TACGIA values ('TG003','Fuijiko F Fujio','Nhat Ban')
insert into	TACGIA values ('TG004','Ngoc Linh','Viet Nam')
insert into	TACGIA values ('TG005','Julia Cook','Duc')
insert into	TACGIA values ('TG006','Hungazit','Bi')
insert into	TACGIA values ('TG007','Nhieu Tac Gia','')
insert into	TACGIA values ('TG008','First News','Viet Nam')
insert into	TACGIA values ('TG009','Thuy Oanh','Viet Nam')
insert into	TACGIA values ('TG010','Trieu Thi Choi','Viet Nam')
insert into	TACGIA values ('TG011','Kamoshida Hajime','Nhat Ban')
insert into	TACGIA values ('TG012','Mieu Cong Tu','Trung Quoc')
insert into	TACGIA values ('TG013','Lan Rua','Viet Nam')
insert into	TACGIA values ('TG014','Shinkai Makoto','Nhat Ban')
insert into	TACGIA values ('TG015','J.K.Rowling','Anh')
insert into	TACGIA values ('TG016','Kozakura','Nhat Ban')
insert into	TACGIA values ('TG017','Tuan Kiet','Trung Quoc')
insert into	TACGIA values ('TG018','The Windy','Viet Nam')
insert into	TACGIA values ('TG019','Nguyen Van Hiep','Viet Nam')
insert into	TACGIA values ('TG020','TS Le Minh Toan','Viet Nam')
insert into	TACGIA values ('TG021','NGregory Mankiw','Bi')
insert into	TACGIA values ('TG022','Truong Ngoc Anh','Viet Nam')
insert into	TACGIA values ('TG023','TS Nguyen Thi Minh Hong','Viet Nam')
insert into	TACGIA values ('TG024','Bae Jin Yong','Han Quoc')
insert into	TACGIA values ('TG025','Andre Aciman','Duc')
insert into	TACGIA values ('TG026','Haemin Sunim','Han Quoc')
insert into	TACGIA values ('TG027','Stephen King','My')
insert into	TACGIA values ('TG028','Jojo Moyes','Bi')
insert into	TACGIA values ('TG029','Kevin Kwan','Anh')
insert into	TACGIA values ('TG030','Adrea Quynhgiao Nguyen','Viet Nam')
insert into	TACGIA values ('TG031','Karen Sullivan','Duc')
insert into	TACGIA values ('TG032','Robert Ashton','My')
insert into	TACGIA values ('TG033','Amy Webb','Bi')
insert into	TACGIA values ('TG034','Lawrence D Burns','Duc')
insert into	TACGIA values ('TG035','John C Havens','Phap')
insert into TACGIA values ('TG036','Khuong Le Binh','Trung Quoc')

--Tạo bảng Menu
create table dbo.MENU(
	MaLoai int references LOAIMENU(MaLoai),
	MaSP nvarchar(100) primary key,
	TenSP nvarchar(100) not NULL,
	Gia int not NULL,
	MaTacGia nvarchar(100) references TACGIA(MaTacGia),
	SoLuongDaBan int not NULL default(0),
	HinhAnh nvarchar(MAX)
);
insert into MENU values (1,'TN001','Chu Tho Nhung',99000,'TG001',10,'Chu_Tho_Nhung.jpg')
insert into MENU values (1,'TN002','Kich thich phat trien thi giac cho be',30000,'TG002',10,'Kich_Thich_Phat_Trien_Thi_Giac_Cho_Be.jpg')
insert into MENU values (1,'TN003','Doraemon Hoat Hinh Mau - Tap 1 (Tai Ban 2020)',33250,'TG003',50,'DoraemonMau1ChuKhungLongCuaNobita.jpg')
insert into MENU values (1,'TN004','Bo Sach Ky Nang Song (Danh Cho Tre 4-10 Tuoi)',57600,'TG004',15,'BoSachKyNangSongChoTre.jpg')
insert into MENU values (1,'TN005','Con xin loi, con da quen le phep!',39200,'TG005',15,'con_xin_loi__con_da_quen_xin_phep.jpg')
insert into MENU values (1,'NC001','Dau Bep Tu Do',199750,'TG006',10,'dau-bep-tu-do.jpg')
insert into MENU values (1,'NC002','Origami Gap Giay Thu Cong - Tro Choi Gap Giay',22750,'TG007',10,'tro-choi-gap-giay.jpg')
insert into MENU values (1,'NC003','Bi Quyet Pha Che Sinh To & Nuoc Ep Trai Cay (Tai Ban)',86400,'TG008',50,'bi-quyet-pha-che-sinh-to-va-nuoc-ep-trai-cay-tai-ban.jpg')
insert into MENU values (1,'NC004','An Chay Trong Yoga - Tai Tao Nguon Nang Luong Tich Cuc',99000,'TG009',50,'an-chay-trong-yoga.jpg')
insert into MENU values (1,'NC005','Thiet Ke Thoi Trang Nu Xuan He',85800,'TG010',10,'thiet-ke-thoi-trang-nu-xuan-he.jpg')
insert into MENU values (1,'VH001','Just Because!',99000,'TG011',15,'just-because.jpg')
insert into MENU values (1,'VH002','999 La Thu Gui Cho Chinh Minh - Mong Ban Tro Thanh Phien Ban Hoan Hao Nhat (Tai Ban 2020)',79200,'TG012',50,'999lathumattruoc.png')
insert into MENU values (1,'VH003','Le Nao Em Khong Biet (Tai Ban 2019)',85600,'TG013',50,'LeNaoEmKhongBiet.jpg')
insert into MENU values (1,'VH004','Nho Ai Do Den Kiet Que (Tai Ban 2019)',87200,'TG013',50,'bia1-nhoaidodenkietque-tb.jpg')
insert into MENU values (1,'VH005','Em La Nha',63700,'TG013',18,'EmLaNha.jpg')
insert into MENU values (1,'VH007','Your Name',46500,'TG014',50,'Yourname.gif')
insert into MENU values (1,'VH008','Harry Potter Va Hon Da Phu Thuy - Tap 1 (Tai Ban 2017)',108000,'TG015',50,'HP1.jpg')
insert into MENU values (1,'VH009','Harry Potter Va Phong Chua Bi Mat - Tap 2 (Tai Ban 2017)',119250,'TG015',50,'HP2.jpg')
insert into MENU values (1,'VH010','Harry Potter Va Ten Tu Nhan Nguc Azkaban - Tap 3 (Tai Ban 2017)',147600,'TG015',40,'HP3.jpg')
insert into MENU values (1,'VH011','Harry Potter Va Chiec Coc Lua - Tap 4 (Tai Ban 2017)',221400,'TG015',40,'HP4.jpg')
insert into MENU values (1,'VH012','Harry Potter Va Hoi Phuong Hoang - Tap 5 (Tai Ban 2017)',291100,'TG015',35,'HP5.jpg')
insert into MENU values (1,'VH013','Harry Potter Va Hoang Tu Lai - Tap 6 (Tai Ban 2017)',176300,'TG015',34,'HP6.jpg')
insert into MENU values (1,'VH014','Harry Potter Va Bao Boi Tu Than - Tap 7 (Tai Ban 2017)',210700,'TG015',54,'HARRY-7.jpg')
insert into MENU values (1,'SNN001','Combo Chinh Phuc Tieng Nhat (Bo 2 Cuon)',233640,'TG016',50,'ComboTiengNhat.jpg')
insert into MENU values (1,'SNN002','Cam Nang Huong Dan Tu Hoc Tieng Duc Trinh Do So Cap - Trung Cap',96000,'TG017',10,'CamNangHocTiengDuc.jpg')
insert into MENU values (1,'SNN003','Giai Thich Ngu Phap Tieng Anh (Tai Ban 2020)',15400,'TG018',16,'GiaiThichNguPhepAnh.jpg')
insert into MENU values (1,'SNN004','Hack Nao Ngu Phap',276250,'TG019',50,'HackNaoNguPhap.jpg')
insert into MENU values (1,'SNN005','Tu Hoc 2000 Tu Vung Tieng Anh Theo Chu De (Tai Ban)',52000,'TG018',35,'2000-tu-vung-tieng-anh.jpg')
insert into MENU values (1,'GT001','Phap Luat Dai Cuong',108000,'TG020',0,'PhapLuatDaiCuong.jpg')
insert into MENU values (1,'GT002','Kinh Te Hoc Vi Mo',261000,'TG021',0,'KinhTeHocViMo.jpg')
insert into MENU values (1,'GT003','Giao Trinh Vi Dieu Khien PC - Ly Thuyet Va Thuc Hanh',90720,'TG022',9,'GiaoTrinhViDieuKhien.jpg')
insert into MENU values (1,'GT004','Giao Trinh Chuan HSK 1',168300,'TG023',9,'HSK1.jpg')
insert into MENU values (1,'GT005','Restart Your English - Basic Grammar - Yeu Lai Tieng Anh Tu Dau',229000,'TG024',18,'RestartYourEnglish.jpg')
insert into MENU values (2,'FT001','Call Me By Your Name',316200,'TG025',50,'CallMeByYourName.jpg')
insert into MENU values (2,'FT002','The Things You Can See Only When You Slow Down',296650,'TG026',50,'TheThingYouCanSeeOnlyWhenYouSlowDown.jpg')
insert into MENU values (2,'FT003','IT',175950,'TG027',40,'IT.jpg')
insert into MENU values (2,'FT004','Me Before You',177650,'TG028',50,'MeBeforeYou.jpg')
insert into MENU values (2,'FT005','Crazy Rich Asians',158100,'TG029',35,'CrazyRichAsians.jpg')
insert into MENU values (2,'FD001','The Banh Mi HandBook: Recipes for Crazy-Delicious Vietnamese Sandwiches',271150,'TG030',35,'TheBanhMiHandBook.jpg')
insert into MENU values (2,'FD002','Step-by-Step Cake Decorating',335750,'TG031',20,'StepbyStepCakeDecorating.jpg')
insert into MENU values (2,'CPT001','Writing for the Web: Teach Yourself',299200,'TG032',70,'WritingthewebTeachYourself.jpg')
insert into MENU values (2,'CPT002','The Big Nine',268600,'TG033',13,'TheBigNine.jpg')
insert into MENU values (2,'CPT003','Autonomy: The Quest to Build the Driverless',249900,'TG034',8,'Autonomy.jpg')
insert into MENU values (2,'CPT004','Hacking Happiness',230350,'TG035',10,'HackingHappiness.jpg')
insert into MENU values (3,'BV001','But Bi Cao Cap Parker Sonnet SLM Đ-ST Silver GT GB-1931493',6997700,'TG007',9,'bUTbIcAOcAP.jpg')
insert into MENU values (3,'BV002','Viet Long Baoke MP2913-36',429300,'TG007',10,'VietLongBaoke.jpg')
insert into MENU values (3,'BV003','But Bi Van CEO-775',302100,'TG007',10,'ButBiNapCEO.jpg')
insert into MENU values (3,'BV004','But Gel Thien Long Gel-08 Sunbeam',6500,'TG007',10,'ButGelTL.jpg')
insert into MENU values (3,'BV005','Hop But Bi TL-097 - Muc Xanh',58900,'TG007',1000,'HopButBiTL.jpg')
insert into MENU values (3,'SPDT001','May Tinh Casio FX 580 VN X',624150,'TG007',100,'Casio580.jpg')
insert into MENU values (3,'SPDT002','May Tinh Vinacal 570 ES Plus II Xanh La',464400,'TG007',101,'VNCall.jpg')
insert into MENU values (3,'BG001','Balo Chong Gu Lop Hoc Mat Ngu Milita Red F1 - A-BL10000',990000,'TG007',24,'BaloLopHopMatNgu.jpg')
insert into MENU values (3,'BG002','Balo Chong Gu Lop Hoc Mat Ngu Koola Green Thunder Power - A-BL10011',990000,'TG007',10,'BG001.jpg')
insert into MENU values (3,'BG003','Balo Thoi Trang Trip Talk! Lost Lake - BLMS00105',306180,'TG007',1,'BaloTripTalk.jpg')
insert into MENU values (3,'BG004','Balo Thoi Trang Lolli Talk! Ocean - BLMS00305',85000,'TG007',0,'kautrNG.jpg')
insert into MENU values (3,'BG005','Tui Deo Cheo Simple Talk! Orange And Grey - TDMS00103 ',179820,'TG007',1,'TuiDeoCheoSumpleTalk.jpg')
insert into MENU values (3,'SPK001','Sticker Trai Tim Nhieu Mau Apli 13898',27200,'TG007',50,'StickerTaiTimApli.jpg')
insert into MENU values (3,'SPK002','LEGO Clasic 10696 - Thung Gach Trung Classic Sang Tao',761400,'TG007',9,'Lego.jpg')

--Tạo bảng Nhân Viên
create table dbo.NHANVIEN(
	MaNV int primary key,
	TenNV nvarchar(50) not NULL,
	Email varchar(50) not NULL,
	Tuoi int not NULL,
	ChucVu nvarchar(20) NULL,
	SDT char(10) not NULL,
	DiaChi nvarchar(100) not NULL,
	MaCN int references CHINHANH(MACN),
	Luong int not NULL
);
insert into NHANVIEN values(1001,N'Kim Seok Jin','kimseokjin@gmail.com',29,N'Thu Ngân','0101010101',N'Quận Thủ Đức',101,1500000)
insert into NHANVIEN values(1002,N'Min Yoongi','minyoongi@gmail.com',28,N'Thu Ngân','0202020202',N'Quận Bình Thạnh',102,12000000)
insert into NHANVIEN values(1003,N'Jung Hoseok','junghoseok@gmail.com',27,N'Kiểm Kê','0303030303',N'Quận Thủ Đức',101,12000000)
insert into NHANVIEN values(1004,N'Kim Nam Joon','kimnamjoon@gmail.com',27,N'Bảo Vệ','0404040404',N'Quận Thủ Đức',101,10000000)
insert into NHANVIEN values(1005,N'Park Jimin','parkjimin@gmail.com',26,N'Kiểm Kê','0405050505',N'Quận Bình Thạnh',102,10000000)
insert into NHANVIEN values(1006,N'Kim Taehuyng','kimtaehuyng@gmail.com',26,N'Kiểm Kê','0975',N'Quận Thủ Đức',101,8000000)
insert into NHANVIEN values(1007,N'Jeon Jungkook','jeonjungkook@gmail.com',24,N'Bảo Vệ','0907070707',N'Quận Bình Thạnh',102,7000000)

--Tạo bảng khách hàng
create table dbo.KHACHHANG(
	MaKH int primary key,
	TenKH nvarchar(50) not NULL,
	Email varchar(50) not NULL,
	Tuoi int NULL,
	SDT char(10) NULL,
	DiaChi nvarchar(100) NULL,
	TongChiTieu int NULL default(0),
	CapThanhVien int NULL default(0),
);
insert into KHACHHANG values(1, N'Doraemon', 'doraemon@gmail.com',13,'0912312312', N'Nhật Bản', 2102000, 3)
insert into KHACHHANG values(2, N'Nobita','nobita@gmail.com',13,'0912312333', N'Nhật Bản', 1560000, 2)
insert into KHACHHANG values(3,N'Shizuka','shizuka@gmail.com',13,'0123456678',N'Nhật Bản',3200000,4)
insert into KHACHHANG values(4,N'Suneo','suneo@gmail.com',13,'0123466754',N'Nhật Bản',9000000,5)
insert into KHACHHANG values(5,N'Jaian','jaian@gmail.com',13,'023445776',N'Nhật Bản',200000,1)

--Tạo bảng Tài khoản
create table dbo.TAIKHOANQL(
	UserName varchar(50) not NULL,
	Pass varchar(20) not null default(0),
	MaQL int references QUANLY(MaQL),
	primary key(MaQL)
);
insert into TAIKHOANQL values('buihanhi','buihanhi',18110168)

create table dbo.TAIKHOANKH(
	UserName varchar(50) not NULL,
	Pass varchar(20) not null default(0),
	MaKH int references KHACHHANG(MaKH) not null,
	primary key (MaKH)
);
insert into TAIKHOANKH values('doraemon','doraemon',1)
insert into TAIKHOANKH values('nobita','nobita',2)
insert into TAIKHOANKH values('shizuka','shizuka',3)
insert into TAIKHOANKH values('suneo','suneo',4)
insert into TAIKHOANKH values('jaian','jaian',5)

create table dbo.TAIKHOANNV(
	UserName varchar(50) not NULL,
	Pass varchar(20) not null default(0),
	MaNV int references NHANVIEN(MaNV),
	primary key(MaNV)
);
insert into TAIKHOANNV values('NV01','1234567890',1001)
insert into TAIKHOANNV values('NV02','1234567890',1002)
insert into TAIKHOANNV values('NV03','1234567890',1003)
insert into TAIKHOANNV values('NV04','1234567890',1004)
insert into TAIKHOANNV values('NV05','1234567890',1005)
insert into TAIKHOANNV values('NV06','1234567890',1006)
insert into TAIKHOANNV values('NV07','1234567890',1007)

--Tạo bảng Hóa đơn
create table dbo.HOADON(
	MaHD int primary key,
	MaKH int references KHACHHANG(MaKH),
	MaCN int references CHINHANH(MaCN),
	NgayXuatHD datetime not NULL,
	TongGia int not NULL,
	MaKHLA int references KHACHHANGLA(MaKHLA)
);

--Tạo bảng Chi Tiết Hóa Đơn
create table dbo.CHITIETHD(
	MaHD int references HOADON(MaHD),
	MaSP nvarchar(100) references MENU(MaSP),
	Loai varchar(10) not NULL,
	SoLuong int not null,
	Gia int not NULL,
	primary key(MaHD, MaSP)
);

--Tạo bảng Gior Hàng
create table GioHang(
	MaGio int primary key,
	MaSP nvarchar(100) references MENU(MaSP),
	MaKH int references KHACHHANG(MaKH)
);

-------------------------
----Khách Hàng chưa có tài khoản --> vừa tạo tài khoản xong
create table dbo.KHACHHANGLA(
	MaKHLA int primary key,
	TenKHLA nvarchar(50) not NULL,
	Email varchar(50) not NULL,
	Tuoi int NULL,
	SDT char(10) NULL,
	DiaChi nvarchar(100) NULL,
	TongChiTieu int NULL default(0),
	CapThanhVien int NULL default(0),
);
create table dbo.TAIKHOANKHLA(
	UserName varchar(50) not NULL,
	Pass varchar(20) not null default(0),
	MaKHLA int references KHACHHANGLA(MaKHLA) not null,
	primary key (MaKHLA)
);

--Tạo bảng Giao Hàng
create table dbo.GIAOHANG(
	MaGH int primary key,
	MaHD int references HOADON(MaHD),
	DiaChiGiao nvarchar(100),
	MaKH int references KHACHHANG(MaKH),
	PhuongThucGiao nvarchar(100),
	KieuThanhToan nvarchar(100),
	BenChuyenPhat nvarchar(100),
	MaKHLA int references KHACHHANGLA(MaKHLA)
);