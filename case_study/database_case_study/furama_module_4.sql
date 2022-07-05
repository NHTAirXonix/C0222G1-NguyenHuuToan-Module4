create database furama_module_4;

INSERT INTO customer_type (customer_type_id,customer_type_name) VALUES
(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Silver'),
(5,'Member');

INSERT INTO customer (customer_id, customer_type_id, customer_name, customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email, customer_address, status_delete) VALUES
("KH-1", 1, "Nguyễn Hoàng Hảo", "1999-10-10", 0, "201802281", "0978144014", "hao@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-2", 4, "Trần Văn Khánh", "1995-10-10", 0, "201802281", "0978144014", "khanh@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-3", 5, "Nguyễn Dương Trung Kiên", "1999-10-10", 0, "201802281", "0978144014", "kien@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-4", 2, "Trần Xuân Trường", "1998-10-10", 0, "201802281", "0978144014", "truong@gmail.com.vn", "1 Như Nguyệt, Đà Nẵng",0),
("KH-5", 3, "Nguyễn Bảo Long", "1998-10-10", 0, "201802281", "0978144014", "long@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-6", 1, "Nguyễn Hữu Toàn", "1999-10-10", 0, "201802281", "0978144014", "hao@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-7", 4, "Huỳnh Nhật Hoàng", "1995-10-10", 0, "201802281", "0978144014", "khanh@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-8", 5, "Nguyễn Đình Luân", "1999-10-10", 0, "201802281", "0978144014", "kien@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-9", 2, "Nguyễn Thiên Duy", "1998-10-10", 0, "201802281", "0978144014", "truong@gmail.com.vn", "1 Như Nguyệt, Đà Nẵng",0),
("KH-10", 3, "Huỳnh Kim Hiếu", "1998-10-10", 0, "201802281", "0978144014", "long@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-11", 1, "Trần Mạnh Cường", "1999-10-10", 0, "201802281", "0978144014", "hao@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-12", 4, "Nguyễn Duy Trung", "1995-10-10", 0, "201802281", "0978144014", "khanh@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-13", 5, "Nguyễn Quang Phúc", "1999-10-10", 0, "201802281", "0978144014", "kien@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0),
("KH-14", 2, "Hồ Duy Tuấn", "1998-10-10", 0, "201802281", "0978144014", "truong@gmail.com.vn", "1 Như Nguyệt, Đà Nẵng",0),
("KH-15", 3, "Hồ Văn Chung", "1998-10-10", 0, "201802281", "0978144014", "long@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0);

