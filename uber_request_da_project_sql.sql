create database uber;
use uber;

select * from userrequest;

select Status, count(*) as Count from userrequest group by Status;

select Pickup_Point, Status, count(*) from userrequest group by Pickup_Point, Status; 

select Request_Hour, count(*) as Request_Count from userrequest group by Request_Hour order by Request_Hour;

select Pickup_Point, count(*) as Cancellations from userrequest where Status='Cancelled' group by Pickup_Point;

select Request_Day, count(*) as Completed_Trips from userrequest where Status='Trip Completed' group by Request_Day;
