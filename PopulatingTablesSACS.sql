
--distription:the task here is to populate all created tables as little as possible

--district table populating
insert into district(district_code,district_name) values(100,'Maseru');
insert into district values(900,'Mafeteng');
insert into district values(300,'Leribe');
insert into district values(400,'MHoek');
        

--populating branches
insert into branch values(1011,'Roma',100);
insert into branch values(9011,'Mafeteng_central',900);
insert into branch values(3011,'Maputswe',300);
insert into branch values(1012,'Maseru_central',100);

--pulating admins relation
insert into admins values(610,'rele@sacs','Relebohile','Pompa','Maseru P.O.Box 100',1011);
insert into admins values(630,'telo@sacs','Tello','Zula','Morija P.O.Box 190',1012);
insert into admins values(640,'zee@sacs','Zekhele','Yamba','Mafeteng P.O.Box 900',9011);
insert into admins values(670,'hloni@sacs','Lehlohonolo','Seholo','Hlotse P.O.Box',3011);


--populating client relation
insert into client values(2020,'Thabo','Sehleka','Roma P.O.Box 180',50207867,610,1011,'Central');
insert into client values(2021,'Thabiso','Raliemere','Motsekuoa P.O.Box 192',63456789,640,9011,'North');
insert into client values(2022,'Lerato','Zoo','Morija P.O.Box 190',56743679,640,9011,'South');
insert into client values(2025,'Nkosi','Panda','Ha-Makhakhe P.O.Box 920',69458523,640,1012,'South');
insert into client values(2026,'Zee','Lieta','Maputswe P.O.Box 310',22325676,670,3011,'North');



--populating payment relation
insert into payment values(4001,'cash','2022-08-08',2021,40000);
insert into payment values(4002,'bank','2022-05-04',2021,1000);
insert into payment values(4005,'bank','2023-08-01',2022,4500);
insert into payment values(4004,'cash','2022-03-08',2025,30000);
insert into payment values(4000,'cash','2022-07-10',2026,30000);
insert into payment values(4009,'bank','2022-10-10',2022,22000);
insert into payment values(4010,'cash','2022-07-03',2022,15000);
insert into payment values(4003,'bank','2022-08-10',2025,50000);


--populating loan table
insert into loan values(3000,8000,590000,'long-term','2022-05-23','2023-05-23',2021,640);
insert into loan values(3122,2000,43500,'long-term','2022-04-04','2023-04-04',2022,640,4004);
insert into loan values(3022,10000,10000,'short-term','2023-02-03','2023-08-03',2025,670,4001);
insert into loan values(3033,50000,50000,'long-term','2022-12-25','2023-12-25',2026,610,4003);
insert into loan values(3034,30000,30000,'long-term','2022-11-10','2023-11-10',2025,630,4000);



--populating savings account relation
insert into savingsacc values(7020,10100,2026);
insert into savingsacc values(7040,5000,2022);
insert into savingsacc values(7060,1500,2022);
insert into savingsacc values(7080,60000,2025);
insert into savingsacc values(7070,4000,2020);
insert into savingsacc values(7050,3000,2021);


--populating membership account
insert into membership values(0001,100,true,4010);
insert into membership values(0004,100,false);
insert into membership values(0003,100,false);
insert into membership values(0007,100,true,4009);
insert into membership values(0008,100,true,4003);
insert into membership values(0006,100,false);
insert into membership values(0005,100,false);


--populating investment relation
insert into investments values(6001,10000,'short-term','2024-01-05',4009);
insert into investments values(6002,100000,'long-term','2024-03-10',4000);
insert into investments values(6003,70000,'long-term','2023-05-12',4003);
insert into investments values(6004,80000,'short-term','2023-08-13',4009);
insert into investments values(6005,30000,'short-term','2023-06-06',4003);
insert into investments values(6007,25000,'long-term','2023-08-02',4005);
insert into investments values(6008,30000,'short-term','2023-02-17',4004);



