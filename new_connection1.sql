-- checking the name of user
SELECT USER FROM  dual;

-- creating Sales data store table
CREATE TABLE SALES_Data (
    OrderNo NUMBER,
    ProductNo NUMBER,
    Price FLOAT,
    Quantity NUMBER,
    Sales FLOAT,
    QtrId NUMBER CHECK (QtrId BETWEEN 1 AND 4),
    MonthId NUMBER CHECK (MonthId BETWEEN 1 AND 12),
    YearId NUMBER
)
--checking the created table
SELECT * FROM TABS;

-- Inserting  the provided sample values in SALES_Data table
INSERT INTO SALES_Data(OrderNo, ProductNo, Price, Quantity, Sales, QtrId, MonthId, YearId)
VALUES (10107, 2, 85.7, 30, 2587, 1, 2, 2003);

INSERT INTO SALES_Data(OrderNo, ProductNo, Price, Quantity, Sales, QtrId, MonthId, YearId)
VALUES (10107, 5, 95.8, 39, 3879.49, 1, 2, 2003);

INSERT INTO SALES_Data(OrderNo, ProductNo, Price, Quantity, Sales, QtrId, MonthId, YearId)
VALUES (10121, 5, 71.5, 34, 2700, 1, 2, 2003);

INSERT INTO SALES_Data(OrderNo, ProductNo, Price, Quantity, Sales, QtrId, MonthId, YearId)
VALUES (10134, 2, 94.74, 41, 3884.34, 3, 7, 2004);

INSERT INTO SALES_Data(OrderNo, ProductNo, Price, Quantity, Sales, QtrId, MonthId, YearId)
VALUES (10134, 5, 100, 27, 3307.77, 3, 7, 2004);

INSERT INTO SALES_Data(OrderNo, ProductNo, Price, Quantity, Sales, QtrId, MonthId, YearId)
VALUES (10159, 14, 100, 49, 5205.27, 4, 10, 2005);

INSERT INTO SALES_Data(OrderNo, ProductNo, Price, Quantity, Sales, QtrId, MonthId, YearId)
VALUES (10168, 1, 96.66, 36, 3479.66, 4, 10, 2006);

INSERT INTO SALES_Data(OrderNo, ProductNo, Price, Quantity, Sales, QtrId, MonthId, YearId)
VALUES (10180, 12, 100, 42, 4695.6, 4, 11, 2006);

--commit the data entry
COMMIT

 -- displaying the inserted values in table
 SELECT * FROM SALES_Data;

-- query to calculate number of products that were sold in each month of each year.
SELECT ProductNo, MonthId, YearId, SUM(Quantity)as Total_number_of_product_sold
FROM SALES_data 
GROUP BY ProductNo, MonthId, YearId
ORDER BY ProductNo;
