Create database retail;
Go
use retail
Go


Create Table Department(

DepartNo char(2),

DepartName char(20),

Primary Key (DepartNo)
);


INSERT INTO Department(DepartNo,DepartName) VALUES ('01','Electrical'); 

INSERT INTO Department(DepartNo,DepartName) VALUES ('02','Furnishings'); 

INSERT INTO Department(DepartNo,DepartName) VALUES ('03','Auto'); 
INSERT INTO Department(DepartNo,DepartName) VALUES ('04','Manchester'); 

INSERT INTO Department(DepartNo,DepartName) VALUES ('05','Clothing'); 


Go

Create Table Customer
(
CustNo char(4),

FName char(20),

LName char(20),

Street char(40),

Suburb char(40),

PostCode char(10),

Balance numeric(8,2),
Primary key(CustNO));  



INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('1040','Clair','Rose','519 Hope St','Hopesville','3511',402.75); 

INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('1234','Ben','Smith','481 South Rd','Southville','3422',818.75); 

INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('1456','Mary','Sweet','12 Horse Pl','Angle Bay','3244',2770.75); 

INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('2567','Mathew','Jones','73 North Rd','Northville','3255',23.5); 

INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('3115','Adam','Wright','66 Bay St','Oceanside','3444',1825.75); 

INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('4120','Sally','Adams','16 Elm Drv','Moomridge','3455',1817.5); 

INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('5220','Mary','Nelson','108 Pine Ln','Castlemaine','3666',698.75); 

INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('5670','Tran','Dinh','808 Ridge Pl','Harper','3687',4402.4); 

INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('5870','Maria','Lopez','512 Acland St','St Kilda','3356',114.6); 

INSERT INTO Customer(CustNo,FName,LName,Street,Suburb,PostCode,Balance) VALUES ('6220','Dan','Martin','41 Ships Ln','Waterside','3771',1045.75); 



Go


Create Table SalesRep(

SalesRepNo char(2) Primary key,

SalesRepLastName char(20),

SalesRepFName char(20),

DepartNo char(2),
Foreign Key(DepartNo) References Department(DepartNO)
); 

 


INSERT INTO SalesRep(SalesRepNo,SalesRepLastName,SalesRepFName,DepartNo) VALUES ('S1','Smith','Bill','01'); 

INSERT INTO SalesRep(SalesRepNo,SalesRepLastName,SalesRepFName,DepartNo) VALUES ('S2','Sheedy','Kevin','03'); 

INSERT INTO SalesRep(SalesRepNo,SalesRepLastName,SalesRepFName,DepartNo) VALUES ('S3','Walsh','Ken','01'); 

INSERT INTO SalesRep(SalesRepNo,SalesRepLastName,SalesRepFName,DepartNo) VALUES ('S4','Salt','Karen','05'); 

INSERT INTO SalesRep(SalesRepNo,SalesRepLastName,SalesRepFName,DepartNo) VALUES ('S5','Jenkin','Peter','04'); 

INSERT INTO SalesRep(SalesRepNo,SalesRepLastName,SalesRepFName,DepartNo) VALUES ('S6','Ibrahim','Michael','03'); 

INSERT INTO SalesRep(SalesRepNo,SalesRepLastName,SalesRepFName,DepartNo) VALUES ('S7','Dakic','Dan','02'); 

INSERT INTO SalesRep(SalesRepNo,SalesRepLastName,SalesRepFName,DepartNo) VALUES ('S8','Parker','Lenny','02'); 

INSERT INTO SalesRep(SalesRepNo,SalesRepLastName,SalesRepFName,DepartNo) VALUES ('S9','James','Julie','05'); 


Go



Create Table Product(

ProductNo char(4),

ProdDescription char(20),

Qtyonhand int,
UnitPrice Numeric(8,2),
Primary Key(ProductNO)); 




INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('AX12','Iron',104,24.95); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('AZ52','Dartboard',20,12.95); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('BA74','Basketball',40,29.95); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('BH22','Microwave',95,124.95); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('BT04','Gas Griller',11,159.99); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('BZ66','Washer Plate',52,450); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('CA14','Floor Mats',78,39.99); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('CB03','Bike',44,254); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('CP22','Seat Covers',68,28.5); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('CP33','Hub Caps',28,38.95); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('CP55','Pillows',33,49.5); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('CX11','Blender',112,22.95); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('CZ81','Treadmill',68,349.95); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('DF02','Mother Board',12,349.95); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('DP01','Mouse Mat',68,10); 
INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('DP03','Color Scanner',13,244); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('DP04','Organizer',12,390); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('DP19','Walkman',50,167.9); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('DP95','Laser Printer',22,356.95); 
INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('DP98','Digital Camera',3,1349.95); 

INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('DP99','Digital Box',2,1238.95);
INSERT INTO Product(ProductNo,ProdDescription,Qtyonhand,UnitPrice) VALUES ('BT87','Notebook',10,13.25);

Go


Create table Orders(
OrderNO char(5) Primary Key,
CustNO char(4),
OrdDate char(10),
SalesRepNo char(2), 
OrdStatus char(1)
Foreign key(CustNo) References Customer(CustNo),
Foreign key(SalesRepNO) References Salesrep(SalesRepNo));

INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12111','1234','21/10/2000','S2','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12112','1234','15/01/2001','S2','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12113','1234','11/02/2002','S3','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12114','1234','2/03/2003','S1','N');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12121','2567','2/09/2002','S4','C'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12489','1234','2/09/2000','S1','C'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12490','1456','12/12/2002','S6','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12491','1456','18/05/2002','S6','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12495','1456','22/11/2002','S4','C'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12497','1456','18/02/2003','S7','N');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12501','1040','22/09/2000','S4','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12502','1040','14/07/2001','S8','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12505','1040','2/06/2002','S7','C'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12508','1040','17/08/2002','S3','N'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12509','1040','23/10/2002','S5','N');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12610','5220','12/04/2001','S8','C'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12620','5220','22/05/2002','S6','C'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12630','5220','17/02/2003','S9','N');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12640','5670','12/09/2001','S4','C'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12666','2567','18/07/2001','S1','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12710','5870','17/11/2002','S2','N'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12777','2567','2/10/2002','S3','N'); 
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12800','6220','14/07/2001','S5','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12810','6220','28/11/2002','S7','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12815','6220','13/05/2002','S5','C');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12820','6220','2/09/2002','S1','N');
INSERT INTO Orders(OrderNo,CustNo,OrdDate,SalesRepNo,OrdStatus) VALUES ('12888','1456','2/09/2001','S5','C');

Go

create table Orderline(

OrderNo char(5),

ProductNo char(4),

QtyPurchased int, 

PurchasePrice numeric(8,2),
Primary key(OrderNo,ProductNo),
Foreign key(OrderNo) References Orders(OrderNo),
Foreign key(ProductNo) References Product(ProductNo)); 



INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12111','DP01',110,9); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12112','DP95',1,320); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12113','CA14',1,35.5); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12113','CB03',1,250); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12114','DP03',1,240); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12121','DP95',1,340); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12489','AX12',11,21.95); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12489','DP04',2,330.95); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12490','AZ52',1,11.2); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12490','BA74',3,24.5); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12490','CZ81',1,300); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12491','BT04',1,149.99); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12491','BZ66',1,399.99); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12495','CB03',4,179.99); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12495','CX11',2,22.95); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12497','AZ52',2,12.95); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12497','BA74',4,24.95); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12497','CP33',2,35.5); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12501','BT04',3,149.99); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12502','CZ81',2,325.99); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12505','DP03',1,220); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12505','DP19',1,150); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12505','DP95',2,340); 
INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12508','DP19',1,160); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12509','DF02',2,310); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12509','DP98',1,1150); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12610','DP19',1,1250); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12620','BH22',1,110); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12620','BT04',1,150); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12630','CB03',1,250); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12640','CZ81',1,324); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12640','DP19',1,1250); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12666','CB03',3,250); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12710','CP22',1,23); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12710','CP33',1,35.5); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12777','DP19',3,150); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12800','BH22',1,130); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12810','DP04',1,310); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12810','DP95',3,310); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12815','CB03',2,250); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12820','CA14',2,34.5); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12820','CP55',11,41); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12820','CX11',1,22); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12888','CP55',1,44.5); 

INSERT INTO Orderline(OrderNo,ProductNo,QtyPurchased,PurchasePrice) VALUES ('12888','CX11',1,22.5); 



