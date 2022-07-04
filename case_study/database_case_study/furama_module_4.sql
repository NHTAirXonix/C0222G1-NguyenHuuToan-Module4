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
("KH-5", 3, "Nguyễn Bảo Long", "1998-10-10", 0, "201802281", "0978144014", "long@gmail.com.vn", "14-12 Hoà An, Đà Nẵng",0);

