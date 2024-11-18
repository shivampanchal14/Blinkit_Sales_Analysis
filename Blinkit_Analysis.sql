use pqr;

show tables;

select * from sql_blinkit_project16875985390;

-- 1
create table blinkit1 select * from sql_blinkit_project16875985390;

select * from blinkit1;

-- 2
select Item_Identifier from blinkit1;

-- 3 
select count(Item_Identifier) from blinkit1;

-- 4
select max(Item_Weight) from blinkit1;

-- 5
select min(Item_Weight) from blinkit1;

-- 6
select avg(Item_Weight) from blinkit1;

-- 7
select count(Item_Fat_Content) from blinkit1 where Item_Fat_Content = "Low Fat";

-- 8
select count(Item_Fat_Content) from blinkit1 where Item_Fat_Content = "Regular";

-- 9
select max(Item_Mrp) from blinkit1;

-- 10
select min(Item_Mrp) from blinkit1;

-- 11
select Item_Identifier, Item_Fat_Content, Item_Type, Item_Mrp from blinkit1 where Item_Mrp > 200;

-- 12
select max(Item_Mrp) from blinkit1 where Item_Fat_Content = "Low Fat";

-- 13
select min(Item_Mrp) from blinkit1 where Item_Fat_Content = "Low Fat";

-- 14
select * from blinkit1 where Item_Mrp between 50 and 100;

-- 15
select distinct(Item_Fat_Content) from blinkit1;

-- 16
select distinct(Item_Type) from blinkit1;

-- 17
select * from blinkit1 order by Item_Mrp desc;

-- 18
select * from blinkit1 order by Item_Outlet_Sales asc;

-- 19
select * from blinkit1 order by Item_Type;

-- 20
select * from blinkit1 where Item_Type in ("Dairy","Meat");

-- 21
select distinct(Outlet_Size) from blinkit1;

-- 22
select distinct(Outlet_Location_Type) from blinkit1;

-- 23
select distinct(Outlet_Type) from blinkit1;

-- 24
select Item_Type, count(*) as Item_count
from blinkit1
group by Item_Type order by Item_count desc;

-- 25
select Outlet_Size, count(*) as 'Size of Outlet'
from blinkit1
group by Outlet_Size order by 'Size of Outlet'asc;

-- 26
select Outlet_Type, count(*) as Outlet_count
from blinkit1
group by Outlet_Type order by Outlet_count desc;

-- 27
select Outlet_Location_Type, count(*) as Location
from blinkit1
group by Outlet_Location_Type order by Location desc;

-- 28
select Item_Type, max(Item_Mrp) from blinkit1
group by Item_Type;

-- 29
select Item_Type, min(Item_Mrp) from blinkit1
group by Item_Type;

-- 30
select Outlet_Establishment_Year, min(Item_Mrp) as Price from blinkit1
group by Outlet_Establishment_Year
order by min(Item_MRP) desc;

-- 31
select Outlet_Establishment_Year, max(Item_Mrp) as Price from blinkit1
group by Outlet_Establishment_Year 
order by max(Item_Mrp) desc;

-- 32
select Outlet_Size, avg(Item_Mrp) as Price from blinkit1
group by Outlet_Size 
order by avg(Item_Mrp) desc;

-- 33
select Outlet_Type, avg(Item_Mrp) as Price from blinkit1
group by Outlet_Type 
order by avg(Item_Mrp) asc;

-- 34
select Outlet_Type, max(Item_Mrp) from blinkit1 
group by Outlet_Type;

-- 35
select Item_Type, max(Item_Weight) from blinkit1 
group by Item_Type;

-- 36
select Outlet_Establishment_Year, max(Item_Weight) from blinkit1 
group by Outlet_Establishment_Year;

-- 37
select Outlet_Type, min(Item_Weight) from blinkit1 
group by Outlet_Type;

-- 38
select Outlet_Location_Type, avg(Item_Weight) as Weight from blinkit1 
group by Outlet_Location_Type
order by avg(Item_Weight) desc;

-- 39
select Item_Type, max(Item_Outlet_Sales) from blinkit1
group by Item_Type;

-- 40
select Item_type, min(Item_Outlet_Sales) from blinkit1
group by Item_Type;

-- 41
select Outlet_Establishment_Year, min(Item_Outlet_Sales) from blinkit1
group by Outlet_Establishment_Year;

-- 42
select Outlet_Establishment_Year, max(Item_Outlet_Sales) from blinkit1
group by Outlet_Establishment_Year 
order by Outlet_Establishment_Year desc;

-- 43
select Outlet_Size, avg(Item_Outlet_Sales) as 'Sales of Outlet' from blinkit1
group by Outlet_Size 
order by avg(Item_Outlet_Sales) desc;

-- 44
select Outlet_Type, avg(Item_Outlet_Sales) from blinkit1
group by Outlet_Type;

-- 45
select Outlet_Type, max(Item_Outlet_Sales) from blinkit1
group by Outlet_Type;

-- 46
select Item_Type, count(Item_Outlet_Sales) from blinkit1
group by Item_Type;

-- 47
select Item_Fat_Content, count(Item_Outlet_Sales) from blinkit1
group by Item_Fat_Content;

-- 48
select Item_Type, max(Item_Visibility) from blinkit1
group by Item_Type;

-- 49
select Item_Type, min(Item_Visibility) from blinkit1
group by Item_Type;

-- 50
select Item_Type, Outlet_Location_Type, count(Item_Outlet_Sales) from blinkit1
where Outlet_Location_Type = 'Tier 1'
group by Item_Type;

-- 51
select Item_Type, Item_Outlet_Sales, Item_Fat_Content from blinkit1
where  Item_Fat_Content in ("Low Fat","LF");

----or----

select Item_Type, sum(Item_Outlet_Sales) AS total_sales from blinkit1
where Item_Fat_Content IN ("Low Fat", "LF")
group by Item_Type
having count(distinct Item_Fat_Content) = 2;












