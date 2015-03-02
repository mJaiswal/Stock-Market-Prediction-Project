CREATE TABLE stocks(
   stock_id serial PRIMARY KEY NOT NULL,
   symbol varchar(10) unique not null,
   name varchar(30) NOT NULL
);

CREATE TABLE real_time_data(
   stock_id integer references stocks(stock_id),
   date date,
   time time,
   price NUMERIC(10, 2),   
   volume integer,
   PRIMARY KEY (stock_id, date, time)
);

CREATE TABLE historical_data(
   stock_id integer references stocks(stock_id),
   date date,
   open_price NUMERIC(10, 2),
   close_price NUMERIC(10, 2),
   high_price NUMERIC(10, 2),
   low_price NUMERIC(10, 2),
   volume integer,
   PRIMARY KEY (stock_id, date)
);