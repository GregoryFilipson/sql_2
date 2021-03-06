create table orders
(
    id           serial primary key,
    date         timestamp not null default now(),
    customer_id  int not null ,
    product_name varchar(255) not null ,
    amount       int,
    foreign key (customer_id) references customers (id)
);