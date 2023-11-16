SELECT * FROM cars.car_dekho;
use cars;

--  Q1 Read Data ?

select* from car_dekho;

-- Q2 Total cars : To get a count of total records ?

select count(*) from car_dekho;

-- Q3 The manager asked the employee how many cars will be available in 2023 ?

select count(*) from car_dekho 
where year = 2023;

-- Q4 The manager  asked the employee how many cars is  avalible in 2020,2021,2022 ?

select count(*) from car_dekho 
where year = 2020; #74
select count(*) from car_dekho 
where year = 2021; #7
select count(*) from car_dekho 
where year = 2022; #7

--  Another method is Groupby --

 select count(*) from car_dekho
 where year in (2020,2021,2022)
 group by year;
 
 -- Q5 clint asked me to print the total of all cars by years. I dont  see all the details ?
 
 select year, count(*) from car_dekho
 group by year;
 
 -- Q6 Clint asked to car dealer agent how many diesel cars will there be in 2020?
 
 select count(*) from car_dekho 
 where year = 2020 and fuel = 'Diesel';  #20
 
 -- Q7 Clint Request a car dealer agent how many petrol cars will there be in 2020?
 
  select count(*) from car_dekho 
 where year = 2020 and fuel = 'Petrol'; #51
 
 -- Q8 The manager told the employee t0o give a print all the fuel cars (petrol, diesel and cng) come by all years ?
 
select year, count(*) from car_dekho 
where fuel = 'Petrol' 
group by year;
select year, count(*) from car_dekho
where fuel = 'Diesel'
group by year;
 select year, count(*) from car_dekho
where fuel = 'CNG'
group by year;

-- Q9 Manager said there were more than 100 cars in a given year, which year had more than 100 cars ?

select year,count(*) from car_dekho 
group by year having count(*)>100;

-- Q10 Manager said there were more than 100 cars in a given year, which year had less than 50 cars ?

select year,count(*) from car_dekho 
group by year having count(*)<50;

-- Q11 The Manager said to the employee all the cars count details between 2015 and  2023, we need a complete list ?

select count(*) from car_dekho
where year between 2015  and 2023;

-- Q12 The Manager said to the employee all the cars  details between 2015 and  2023, we need a complete list ?

select * from car_dekho
where year between 2015  and 2023;

