CREATE DATABASE IF NOT EXISTS cart DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE cart;

CREATE TABLE IF NOT EXISTS product (
  id int(11) NOT NULL AUTO_INCREMENT,
  pro_image text NOT NULL,
  name varchar(200) NOT NULL,
  price varchar(10) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO product (id, pro_image, name, price) VALUES
(1, '1.png', 'Book 1', '20000'),
(2, '4.png', 'Book 2', '12657'),
(3, '2.png', 'Book 3', '26779'),
(4, '7.png', 'Book 4', '6500'),
(5, '5.png', 'Book 5', '12000'),
(6, '3.png', 'Book 6', '15000'),
(7, '8.png', 'Book 7', '34500'),
(8, '6.png', 'Book 8', '45000');