CREATE TABLE Customer (
  name varchar(100) NOT NULL,
  email varchar(100) UNIQUE,
  customer_id serial PRIMARY KEY,
  phone_number varchar(15) NOT NULL,
  password varchar(100) NOT NULL
);

CREATE TABLE Supplier (
  name varchar(100) NOT NULL,
  address varchar(100) NOT NULL,
  supplier_id serial PRIMARY KEY,
  phone_number varchar(15) NOT NULL
);

CREATE TABLE Courrier (
  name varchar(100) NOT NULL,
  courrier_id serial PRIMARY KEY,
  address varchar(100) NOT NULL,
  phone_number varchar(15) NOT NULL
);

CREATE TABLE Category (
  category_id serial PRIMARY KEY,
  name varchar(100)
);

CREATE TABLE Product (
  product_id serial PRIMARY KEY,
  name varchar(100) NOT NULL,
  price float NOT NULL,
  stock integer NOT NULL,
  category_id integer,
  supplier_id integer,
  FOREIGN KEY(category_id) REFERENCES Category(category_id),
  FOREIGN KEY(supplier_id) REFERENCES Supplier(supplier_id)
);

CREATE TABLE Orders (
  order_id serial PRIMARY KEY,
  courrier_id integer,
  customer_id integer,
  product_id integer,
  quantity integer,
  delivery_status varchar(100),
  order_data date,
  FOREIGN KEY(customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY(courrier_id) REFERENCES Courrier(courrier_id),
  FOREIGN KEY(product_id) REFERENCES Product(product_id)
);
