create database fitness_center_db;

use fitness_center_db;

create table members (
	id int primary key,
    name varchar(255) not null,
    age int
);

create table workoutsessions (
	session_id int primary key,
    member_id int,
    session_date date,
    session_time varchar(50),
    activity varchar(255),
    foreign key (member_id) references members (id)
);

-- Task 1: Data Insertion
insert into members (id, name, age)
values
('1', 'Vincent Baron', '25'),
('2', 'Annibelle Jones', '30'),
('3', 'Dana Smith', '18');

insert into workoutsessions (session_id, member_id, session_date, session_time, activity)
values
('123', 1, '2024-01-15', '07:00 am', 'yoga'),
('456', 1, '2024-01-25', '07:00 am', 'yoga'),
('789', 2, '2024-01-15', '1:00 pm', 'swimming'),
('098', 2, '2024-02-02', '08:00 am', 'yoga'),
('765', 1, '2024-02-05', '10:00 am', 'treadmill'),
('432', 3, '2024-02-05', '10:00 am', 'treadmill'),
('198', 3, '2024-01-15', '09:00 am', 'swimming');
    
-- Task 2: Update data for Vincent for his yoga seesion from am to pm

UPDATE workoutsessions
SET session_time = CASE
    WHEN session_time LIKE 'AM' THEN REPLACE(session_time, 'AM', 'PM')
end
where member_id = 1;

-- Task 3: Data deletion -Dana Smith cancelled membership

delete from members
where name = 'dana smith';

-- deleting all session for dana smith so that i can delete dana smith from members table

delete from workoutsessions
where member_id = '3';

select * from members

select * from workoutsessions







