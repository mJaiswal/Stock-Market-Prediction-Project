drop table if exists real_time_data;
drop table if exists historical_data;
drop table if exists stocks;

CREATE TABLE stocks(   
   symbol varchar(10) PRIMARY KEY NOT NULL,
   name varchar(30) NOT NULL
);

CREATE TABLE real_time_data(
   symbol varchar(10) references stocks(symbol),
   date date,
   time time,
   price NUMERIC(10, 2),   
   volume integer,
   PRIMARY KEY (symbol, date, time)
);

CREATE TABLE historical_data(
   symbol varchar(10) references stocks(symbol),
   date date,
   open_price NUMERIC(10, 2),
   close_price NUMERIC(10, 2),
   high_price NUMERIC(10, 2),
   low_price NUMERIC(10, 2),
   volume integer,
   adj_close_price NUMERIC(10,2),
   PRIMARY KEY (symbol, date)
);