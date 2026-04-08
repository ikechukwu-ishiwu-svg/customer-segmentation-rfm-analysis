--Phase-1 Data Understanding (done in excel)


--check that data is properly imported into SSMS
select * from dbo.online_retail

--Phase-2 Data Cleaning (Sql)
--Create a Cleaned Table
 select *
 into online_retail_cleaned_rfm
 from dbo.online_retail
 where 
 CustomerID is not null
 and Quantity>0;
 

 --check the cleaned table
 select count(*) from online_retail_cleaned_rfm

 --removing duplicates
 select distinct * into online_retail_rfm_nodup 
  from online_retail_cleaned_rfm

   select count(*) from online_retail_rfm_nodup

   --Adding Revenue column
   Alter table  online_retail_rfm_nodup
   add Revenue Decimal(10,2)

   update  online_retail_rfm_nodup
   set Revenue = Quantity * UnitPrice;

 --Phase-3 RFM Data Preparation/Feature Engineering(Professioal Approach)

 --step 1- Find the last Transaction Date
 select max(InvoiceDate) as LastPurchaseDate
 from online_retail_rfm_nodup;

 --step 2- Create the RFM Base Table (with InvoiceDate datatype changed from Datetime to Date)
 select
       CustomerID, max(cast(InvoiceDate as date)) as LastPurchaseDate,
       count(distinct InvoiceNo) as Frequency,
       sum(Revenue) AS Monetary
        from online_retail_rfm_nodup
        group by CustomerID;

--step 3- Create Recency,Frequency and Monetary (RFM)
select customerID,
      DATEDIFF(day,max(cast(InvoiceDate as date)),'2011-12-10') AS Recency,
      count(distinct InvoiceNo) as Frequency,
          sum(Revenue) as Monetary
from online_retail_rfm_nodup
group by CustomerID;

--step 4- Save the RFM Table (Professional Practice)
select customerID,
      DATEDIFF(day,max(cast(InvoiceDate as date)),'2011-12-10') AS Recency,
      count(distinct InvoiceNo) as Frequency,
          sum(Revenue) as Monetary
into rfm_base
from online_retail_rfm_nodup
group by CustomerID;

--check the result (should show customers with high spending)
select top 20 * from rfm_base
order by Monetary desc; 

SELECT * FROM rfm_base

--Step 5- Export to dasktop to upload for RFM segmentation using python 

