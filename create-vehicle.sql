CREATE TABLE Users (
  user_id integer,
  email_id varchar(100) NOT NULL,
  mobile_number varchar(10) NOT NULL,
  address varchar(200) NOT NULL,
  name varchar(100) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE Login_Credentials (
  username integer NOT NULL,
  password varchar(100) NOT NULL,
  security_question varchar(100),
  FOREIGN KEY(username) REFERENCES Users(user_id)
);

CREATE TABLE Roles (
  user_id integer,
  role_name varchar(100),
  description varchar(100),
  FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

CREATE TABLE Customer (
  customer_id integer,
  agent_id integer,
  name varchar(100) NOT NULL,
  mobile_number varchar(10) NOT NULL,
  email varchar(100) NOT NULL,
  address varchar(200) NOT NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY(agent_id) REFERENCES Users(user_id)
);

CREATE TABLE Vehicle (
  vehicle_id integer,
  vehicle_number varchar(10) UNIQUE,
  type varchar(20) NOT NULL,
  description varchar(100),
  owner_id integer,
  PRIMARY KEY (vehicle_id),
  FOREIGN KEY(owner_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Registration (
  registration_id integer,
  vehicle_number varchar(10),
  vehicle_type varchar(20),
  date_of_registration date NOT NULL,
  PRIMARY KEY (registration_id),
  FOREIGN KEY(vehicle_number) REFERENCES Vehicle(vehicle_number)
);

CREATE TABLE Insurance (
  insurance_id integer,
  registration_id integer,
  vehicle_number varchar(10),
  owner_id integer,
  insurance_type varchar(20) NOT NULL,
  insurance_validity date NOT NULL,
  PRIMARY KEY (insurance_id),
  FOREIGN KEY(registration_id) REFERENCES Registration(registration_id),
  FOREIGN KEY(vehicle_number) REFERENCES Vehicle(vehicle_number),
  FOREIGN KEY(owner_id) REFERENCES Customer(customer_id)
);
