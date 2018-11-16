CREATE DATABASE IT_project DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
			USE IT_project;
			

				CREATE TABLE admin (
				Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				User VARCHAR(255),
				Password VARCHAR(255)
                
			);
            
            INSERT INTO admin(User, Password)
            VALUES ('TaoNguyen997','123');
		
			/*customers*/

			CREATE TABLE Customers (
				Id INT PRIMARY KEY AUTO_INCREMENT,
				Customer_Name VARCHAR(255),
				Email VARCHAR(255),
				Address VARCHAR(255),
				Phone VARCHAR(255),
				User VARCHAR(255),
				Password VARCHAR(255)
			);
            INSERT INTO Customers(Customer_Name, Email, Address, Phone, User, Password)
			VALUES 	('Vannguyen','acv@gmail.com','sky','01626252169','taonguyen991','123aa'),
					('Vannguyen','cdd@gmail.com','sky','01626252169','taonguyen991','123hffa'),
                    ('Vannguyen','acv@gmail.com','sky','01626252169','taonguyen991','123aa');
						SELECT * FROM Customers;
	
        
			/*Category*/

			CREATE TABLE Category (
				Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				Category_Name VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
			) ENGINE=MyISAM  DEFAULT CHARSET=latin1	;
			INSERT INTO Category
			VALUES 	(default ,'Gio Qua'),
					(default ,'Ruou'),
					(default,'Hop Qua');

				SELECT 
				*
			FROM
				Category;	
                
             
                
                	CREATE TABLE Image	 (
				Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				Link VARCHAR(255)
			);
			INSERT INTO Image
			VALUES
						(default,'./Image/agoi1.jpg'),
						(default,'./Image/agoi3.jpg'),
						(default,'./Image/agoi4.jpg'),
						(default,'./Image/agoi5.jpg'),
						(default,'./Image/hhop10.jpg'),
						(default,'./Image/hhop3.jpg'),
						(default,'./Image/rtet4.jpg'),
						(default,'./Image/rtet6.jpg'),
						(default,'./Image/hhop5.jpg'),
						(default,'./Image/rtet1.jpg'),
						(default,'./Image/hhop7.jpg');
			 
			SELECT 
				*
			FROM
				Image;
		/*drop table Image;*/
			/*product*/

			CREATE TABLE Product (
				Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                hinhanh Varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
				Product_Name VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
				Price DOUBLE,
				Category_Id INT,
				Discription VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
                Quantity INT,
			
				FOREIGN KEY (Category_Id)
					REFERENCES Category(Id)
			)ENGINE=MyISAM  DEFAULT CHARSET=latin1	;	
			INSERT INTO Product
			VALUES 
					
				(default,'./Image/agoi1.jpg','Ruou Vang',150000,1,'New',17),
				(default,'./Image/hhop5.jpg','Ruou Phu Quy', 15000,3,'New',10),
				(default,'./Image/agoi1.jpg','Ruou Phu Quy', 15000,1,'New',10),
				(default,'./Image/agoi5.jpg','Ruou Phu Quy', 15000,1,'New',10),
				(default,'./Image/rtet1.jpg','Ruou Phu Quy', 15000,2,'New',10),
				(default,'./Image/agoi1.jpg','Gio hoa qua',15000,1,'New',43),
				(default,'./Image/agoi1.jpg','Ruou Phu Quy', 15000,1,'Sale',10),
				(default,'./Image/agoi1.jpg','Ruou Vang',150000,1,'New',17),
				(default,'./Image/hhop5.jpg','Ruou Phu Quy', 15000,3,'New',10),
				(default,'./Image/hhop6.jpg','Ruou Phu Quy', 15000,3,'New',10),
				(default,'./Image/rtet1.jpg','Ruou Phu Quy', 15000,2,'New',10),
				(default,'./Image/hhop3.jpg','Ruou Phu Quy', 15000,3,'New',10),
				(default,'./Image/rtet6.jpg','Gio hoa qua',15000,2,'New',43),
				(default,'./Image/hhop4.jpg','Ruou Phu Quy', 15000,3,'Sale',10),	
				(default,'./Image/rtet2.jpg','Gio phat loc',15000,2,'New',21);
					

			SELECT 
				*
			FROM
				Product;								
		
			/*Order*/

			CREATE TABLE Orders (
				Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				Customer_Id INT,
				Fee_Ship DOUBLE,
				Date_order DATE,
				FOREIGN KEY (Customer_Id)
					REFERENCES Customers (Id)
			)ENGINE=MyISAM  DEFAULT CHARSET=latin1	;

			/*Order*/

			CREATE TABLE Comments (
				Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				Id_customer INT,
				Cmt_content VARCHAR(255),
				FOREIGN KEY (Id_customer)
					REFERENCES Customers (Id)
			)ENGINE=MyISAM  DEFAULT CHARSET=latin1	;
			/*OrderDetail*/
			CREATE TABLE OrderDetail (
				Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
				Order_Id INT NOT NULL,
				Product_Id INT,
				Quantity INT,
				FOREIGN KEY (Order_Id)
					REFERENCES Orders (Id),
				FOREIGN KEY (Product_Id)
					REFERENCES Product(Id)
			)ENGINE=MyISAM  DEFAULT CHARSET=latin1	;
