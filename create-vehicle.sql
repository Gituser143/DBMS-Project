CREATE TABLE Login_Credentials (
  username varchar(100),
  password varchar(100) NOT NULL, -- check length, min should be 8
  security_question varchar(100),
  PRIMARY KEY (username)
);

CREATE TABLE Roles (
  role_name varchar(100),
  role_description varchar(100),
  office_building varchar(100),
  PRIMARY KEY (role_name)
);

CREATE TABLE Users (
  user_id integer,
  username varchar(100),
  email_id varchar(100) NOT NULL UNIQUE,
  mobile_number varchar(10) NOT NULL UNIQUE, -- check should be of correct length
  address varchar(200) NOT NULL,
  name varchar(100) NOT NULL,
  role_name varchar(100),
  PRIMARY KEY (user_id),
  FOREIGN KEY (role_name) REFERENCES Roles (role_name),
  FOREIGN KEY (username) REFERENCES Login_Credentials (username)
);

CREATE TABLE Customer (
  customer_id integer,
  agent_id integer,
  name varchar(100) NOT NULL,
  mobile_number varchar(10) NOT NULL UNIQUE,
  email varchar(100) NOT NULL UNIQUE,
  address varchar(200) NOT NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY(agent_id) REFERENCES Users(user_id)
);

CREATE TABLE Vehicle (
  vehicle_id integer,
  vehicle_number varchar(10) UNIQUE,  -- check with regex
  type varchar(20) NOT NULL,
  description varchar(100),
  owner_id integer,
  PRIMARY KEY (vehicle_id),
  FOREIGN KEY(owner_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Registration (
  registration_id integer UNIQUE,
  vehicle_number varchar(10),
  vehicle_type varchar(20),
  date_of_registration date NOT NULL,
  PRIMARY KEY (registration_id, vehicle_number),
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
  FOREIGN KEY(registration_id, vehicle_number) REFERENCES Registration(registration_id, vehicle_number),
  FOREIGN KEY(owner_id) REFERENCES Customer(customer_id)
);
