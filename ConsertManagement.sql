-- Creating the database

create database ConcertManagement;

-- Using the database

use ConcertManagement;

-- Creating table Venue

create table Venue(
    venue_id int PRIMARY KEY,
    area varchar(15),
    city varchar(20),
    pincode int,
    venue_name varchar(20),
    seating_capacity int
);

-- Creating table Organization

create table Organization(
    org_id int PRIMARY KEY,
    org_name varchar(15),
    No_of_organizers int,
    phone_no bigint,
    address varchar(20),
    org_email varchar(30)
);

-- Creating table Customer

create table Customer(
    cust_id int PRIMARY KEY,
    cust_first_name varchar(15),
    cust_last_name varchar(15),
    cust_phone_no bigint,
    cust_address varchar(20),
    cust_email varchar(30)
);

-- Creating table Concert

create table Concert(
    concert_id int PRIMARY KEY,
    concert_date varchar(15),
    start_time varchar(20),
    end_time varchar(20),
    venue_id int,
    FOREIGN KEY(venue_id) REFERENCES Venue(venue_id),
    org_id int,
    FOREIGN KEY(org_id) REFERENCES Organization(org_id)
);

-- Creating table Artist

create table Artist(
    artist_id int PRIMARY KEY,
    art_first_name varchar(15),
    art_last_name varchar(20),
    gender varchar(20),
    age int,
    genre varchar(20),
    art_address varchar(40),
    art_email varchar(30),
    art_phone bigint,
    concert_id int,
    FOREIGN KEY(concert_id) REFERENCES Concert(concert_id)
);

-- Creating table Ticket

create table Ticket(
    ticket_no int PRIMARY KEY,
    no_of_tickets int,
    book_date varchar(20),
    price int,
    total_price int,
    concert_tic_date varchar(20) NOT NULL,
    cust_id int,
    FOREIGN KEY(cust_id) REFERENCES Customer(cust_id),
    concert_id int,
    FOREIGN KEY(concert_id) REFERENCES Concert(concert_id)
);

-- Inserting into Venue

insert into venue values(101, "Andheri", "Mumbai", 221101, "Harmony House Hall", 1000);
insert into venue values(102, "Katraj", "Pune", 411043, "Red Rock Ground", 5000);
insert into venue values(103, "Pavai", "Mumbai", 214043, "Rhythm Corner", 5000);
insert into venue values(104, "MG Road", "Nashik", 312043, "Dongre vasti", 2000);
insert into venue values(105, "Durga Nagar", "Kolkata", 512043, "Beat Street Theatre", 1500);

-- Inserting into Organization

insert into organization values(202, "Indigo", 15, 9800029828, "Pune", "indigoorg@gmail.com");
insert into organization values(203, "Butter Cup", 8, 986543465, "Mumbai", "buttercuporg@gmail.com");
insert into organization values(204, "Silver Stone", 20, 77771423, "Nashik", "silverstone@gmail.com");
insert into organization values(205, "Hyde Park", 20, 896371423, "Kolkata", "hydepark@gmail.com");

-- Inserting into Customer

insert into customer values(301, "Sanika", "Deokar", 8054637287, "Mumbai", "sanika@gmail.com");
insert into customer values(302, "Jagruti", "Boraste", 754326152, "Pune", "borastejagruti@gmail.com");
insert into customer values(303, "Gargi", "Borkar", 645382952, "Mumbai", "gargiborkar@gmail.com");
insert into customer values(304, "Farin", "Attar", 890352252, "Nashik", "farin@gmail.com");
insert into customer values(305, "Dhanashri", "Nanekar", 999952252, "Kolkata", "dhanshri@gmail.com");

-- Inserting into Concert

insert into concert values(401, "01/02/2024", "8pm", "11pm", 101, 202);
insert into concert values(402, "02/02/2024", "7pm", "10pm", 102, 203);
insert into concert values(403, "03/02/2024", "9pm", "12pm", 103, 204);
insert into concert values(404, "04/02/2024", "6pm", "9pm", 104, 205);
insert into concert values(405, "05/02/2024", "7pm", "11pm", 105, 206);

-- Inserting into Artist

insert into artist values(501, "Darshan", "Raval", "Male", 29, "Indian Pop", "Andheri, Mumbai", "darshanraval@gmail.com", 7423784579, 401);
insert into artist values(502, "Arijit", "Singh", "Male", 29, "Indian Film Pop", "MG Road, Kolkata", "arijitsingh@gmail.com", 7424567231, 402);
insert into artist values(503, "Shreya", "Ghoshal", "Female", 32, "Rock", "Gandhi Nagar, Bangalore", "shreyaghoshal@gmail.com", 9183456378, 403);
insert into artist values(504, "Arman", "Malik", "Male", 27, "Classical Music", "Fashion Street, Delhi", "armanmalik@gmail.com", 7645563781, 404);
insert into artist values(505, "Justin", "Bieber", "Male", 30, "Hiphop", "Beverly Hills, USA", "justinbieber@gmail.com", 7645639876, 405);

-- Inserting into Ticket

insert into ticket values(601, 1, "22/01/2024", 2000, 2120, "01/02/2024", 301, 401);
insert into ticket values(602, 4, "24/01/2024", 3000, 3020, "02/02/2024", 302, 402);
insert into ticket values(603, 2, "25/01/2024", 4000, 4100, "03/02/2024", 303, 403);
insert into ticket values(604, 2, "27/01/2024", 2200, 2070, "04/02/2024", 304, 404);
insert into ticket values(605, 3, "29/01/2024", 3000, 3090, "05/02/2024", 305, 405);

-- Selecting from Venue

select * from venue;

-- Selecting from Organization

select * from organization;

-- Selecting from Customer

select * from customer;

-- Selecting from Concert

select * from concert;

-- Selecting from Artist
select * from artist;

-- Selecting from Ticket
select * from ticket;
