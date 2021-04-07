create table users(
                      id serial primary key,
                      name varchar(255),
                      surname varchar(255),
                      email varchar(255),
                      work_id int
);

create table works(
                      id serial primary key ,
                      work_name varchar(255),
                      status bool
);

create table timings(
                        id serial primary key,
                        code varchar(255),
                        track int,
                        user_id int,
                        work_id int
);

insert into users (name, surname, email)
values ('Yaroslav', 'Coldov', 'yaroslavcoldov@gmail.com'),
       ('Pavel','Skutin','pavelskutin@gmail.com'),
       ('Yuri','Rozental','yurirozental@gmail.com'),
       ('Anton','Sobolev','antonsobolev@gmail.com'),
       ('Kirill','Raze','kirillraze@gmail.com'),
       ('Kir','Cursedov','kircursedov@gmail.com'),
       ('Evan','Wheel','evanwheel@gmail.com'),
       ('Ken','Kaneki','kenkaneki@gmail.com'),
       ('Naruto','Uzumaki','narutouzumaki@gmail.com'),
       ('Yagami','Light','yagamilight@gmail.com');

select id, name, surname from users where name = 'Yaroslav' and id >= 5 limit 1;

update users set name = 'Akashi' and surname = 'Seijuro' and email = 'akashiseijuro@gmail.com' where id = 6;

select email from users where id in (1,3,5,7,9);

delete from users where id = 7;

insert into users (name, surname, email)
values ('Kuroko', 'Tetsuya', 'kurokotetsuya@gmail.cru');

select name, surname where (id <= 2 or id >= 6) and name = 'Akashi';