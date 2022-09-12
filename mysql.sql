create table passenger(pass_name varchar(255) not null, pass_ID int(20) primary key auto_increment, pass_ph int(20), pass_email varchar(255), ticket_no int(20) not null, flight_no int(20) not null, depart_time time, arrival_time time); 

create table flight(flight_name varchar(255) not null, flight_no int(30) primary key, depart_time time, arrival_time time, total_seats int(50));

create table ticket(ticket_no int(50) primary key, cust_ID int(40) not null, flight_no, foreign key(flight_no) references flight(flight_no), price int(20)); 

create table business(ticket_no int, foreign key(ticket_no) references ticket(ticket_no), flight_no int, foreign key(flight_no) references flight(flight_no), total_money int(20));


insert into passenger values('Anusha', 001, '1234', 'anuh', '111', '11', '0820', '1020');
insert into passenger values('Monica', 002, '1234', 'anuh', '222', '22', '0820', '1020');
insert into passenger values('Bhoomi', 003, '1234', 'anuh', '333', '33', '0820', '1020');

insert into flight values('Indigo', 11,'0820', '1020', 20);
insert into flight values('GoAir', 22,'0820', '1020', 10);
insert into flight values('vistara',33,'0820', '1020', 30);

insert into ticket values('111', '001', '11', 1000);
insert into ticket values('222', '002', '22', 2000);
insert into ticket values('333', '003', '33', 2500);

select a.pass_ID, b.flight_no, c.ticket_no from passenger a, flight b, ticket c where a.flight_no = b.flight_no;