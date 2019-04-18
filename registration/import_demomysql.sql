use demomysql;

CREATE TABLE login (
id int(9) NOT NULL auto_increment,
name varchar(100) NOT NULL,
email varchar(100) NOT NULL,
username varchar(100) NOT NULL,
password varchar(100) NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE products (
id int(11) NOT NULL auto_increment,
name varchar(100) NOT NULL,
qty int(5) NOT NULL,
price decimal(10,2) NOT NULL,
login_id int(11) NOT NULL,
PRIMARY KEY (id),
CONSTRAINT FK_products_1
FOREIGN KEY (login_id) REFERENCES login(id)
ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB;

# Insert value into login table;
INSERT INTO `login` (`id`,`name`,`email`,`username`,`password`) VALUES (1,'Admin','admin@gmail','admin123',md5('admin123'));
INSERT INTO `login` (`id`,`name`,`email`,`username`,`password`) VALUES (2,'Abdullah Jobayer','ajobayer@gmail','ajobayer',md5('ajobayer'));
INSERT INTO `login` (`id`,`name`,`email`,`username`,`password`) VALUES (3,'Tahir Jobayer','tahir@gmail','ajobayer',md5('tahir'));
INSERT INTO `login` (`id`,`name`,`email`,`username`,`password`) VALUES (4,'Adib Jobayer','adib@gmail','adib',md5('adib'));

# Insert value into products table;
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (1,'iPhone 8',10,400.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (2,'iPhone 7',10,300.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (3,'iPhone 6',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (4,'iPhone 4',10,100.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (5,'Samsung S8',10,800.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (6,'Samsung S6',10,500.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (7,'Samsung S4',10,300.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (8,'Samsung S3',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (9,'Samsung S2',10,100.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (10,'Nokia 1',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (12,'Nokia 2',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (13,'Nokia 3',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (14,'Nokia 4',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (15,'Nokia 5',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (16,'Xperia Z 1',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (17,'Xperia Z 1 2',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (18,'Xperia Z 1 3',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (19,'Xperia Z 1 4',10,200.00,1);
INSERT INTO `products` (`id`,`name`,`qty`,`price`,`login_id`) VALUES (20,'Xperia Z 1 5',10,200.00,1);

