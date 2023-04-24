

--description: the task is to create all tables as per systems's GCS


--the "if not exists" part is just added for incase the code is ran multiple times.
--the code below creates the 1st table called district 
create table if not exists district(
       district_code integer not null unique,
       district_name varchar(45),
       primary key(district_code)
);

--the code below create the 2nd table called branch
create table if not exists branch(
       branch_code integer not null unique,
       branch_name varchar(45),
       district_code integer,
       primary key(branch_code),
       foreign key(district_code) references district(district_code)--shows the foreign key from the previous table
);

--this code creates the next table called admins
create table if not exists admins(
       admin_id integer not null unique,
       admin_username varchar(45),
       admin_fname varchar(45),
       admin_lname varchar(45),
       admin_address varchar(45),
       branch_code integer,
       primary key (admin_id),
       foreign key(branch_code) references branch(branch_code) --foreign key from the branch table
);

--below is another table called client
create table if not exists client(
       client_id integer not null unique,
       client_fname varchar(45),
       client_lname varchar(45),
       client_address varchar(45),
       client_contact integer,
       admin_id integer,
       branch_code integer,
       primary key (client_id),
       foreign key(admin_id) references admins(admin_id),--the foreign key from the table admins
       foreign key(branch_code) references branch(branch_code)--the foreign key that references the branch table
);
--we end up adding another attribute client address region because we forgot it when we were first creating tables
alter table client 
add column client_addressregion text;

--then follows payment table
create table if not exists payment(
       payment_id integer not null unique,
       payment_method varchar(45),
       payment_date date,
       client_id integer,
       primary key (payment_id),
       foreign key (client_id) references client(client_id)--the foreign key here is client id
);

--again we forgot to add an amount under payment that is why we ended up adding if yet we had already created the tables
alter table payment
add column payment_amount decimal;

---savings account table
create table if not exists savingsacc(
       account_num integer not null unique,
       account_balance decimal,
       client_id integer,
       primary key (account_num),
       foreign key (client_id) references client(client_id)--client id is a foreign key 
      
);


--loan table
create table if not exists loan(
       loan_id integer not null unique,
       loan_balance decimal,
       loan_amount decimal,
       loan_type varchar(45),
       loan_issuedate date,
       loan_enddate date,
       client_id integer,
       admin_id integer,
       payment_id integer,
       primary key (loan_id),
       foreign key(client_id) references client(client_id),
       foreign key(admin_id) references admins(admin_id),
       foreign key(payment_id) references payment(payment_id)
);

--membership table
create table if not exists membership(
       membership_id integer not null unique,
       membership_amount decimal,
       membership_paid boolean,
       payment_id integer,
       primary key (membership_id),
       foreign key(payment_id) references payment(payment_id)
);

--investments relation
create table if not exists investments(
       investment_id integer not null unique,
       investment_amount decimal,
       investment_type varchar(45),
       maturity_date date,
       payment_id integer,
       primary key (investment_id),
       foreign key(payment_id) references payment(payment_id)
);

