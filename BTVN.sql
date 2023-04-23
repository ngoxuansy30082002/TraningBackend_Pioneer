USE CLASSICMODELS;
 
-- lọc ra tất cả những khách hàng có lượng salesRepEmployeeNumber lớn 1300 hoặc bé hơn 1100 (bảng customers) 
SELECT * FROM CUSTOMERS
WHERE SALESREPEMPLOYEENUMBER > 1300 OR SALESREPEMPLOYEENUMBER < 1100;

-- tìm loại mặt hàng có giá giao động từ 30$ đến 70$ (bảng products)
SELECT * FROM PRODUCTS
WHERE BUYPRICE BETWEEN 30 AND 70;

-- tìm toàn bộ văn phòng có ở nước mỹ nhưng không ở nước pháp (bảng offices)
SELECT * FROM OFFICES
WHERE COUNTRY = "USA" AND NOT COUNTRY = "FRANCE"; 

-- liệt kê tổng creditLimit của mỗi quốc gia (bảng customers)
SELECT COUNTRY,SUM(CREDITLIMIT) FROM CUSTOMERS 
GROUP BY COUNTRY;

-- liệt kê tổng số lượng khách hàng của mỗi quốc gia (bảng customers)
SELECT COUNTRY,COUNT(CUSTOMERNAME) FROM CUSTOMERS 
GROUP BY COUNTRY;


-- SELECT * FROM CUSTOMERS
-- WHERE CUSTOMERNUMBER = (
-- SELECT MAX(CUSTOMERNUMBER) FROM CUSTOMERS
-- WHERE CUSTOMERNUMBER < (
-- SELECT MAX(CUSTOMERNUMBER) FROM CUSTOMERS
-- )
-- );
