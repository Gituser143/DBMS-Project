INSERT INTO Login_Credentials VALUES ('user1', 'password1', 'what is your mothers name?');
INSERT INTO Login_Credentials VALUES ('user2', 'password2', 'what is your fathers name?');
INSERT INTO Login_Credentials VALUES ('user3', 'password3', 'what is your sisters name?');
INSERT INTO Login_Credentials VALUES ('user4', 'password4', 'what is your dogs name?');
INSERT INTO Login_Credentials VALUES ('user5', 'password5', 'what is your mothers DOB?');

INSERT INTO Roles VALUES ('Agent', 'Simple user Agent', 'B01');
INSERT INTO Roles VALUES ('Manager', 'Manages Agents', 'B02');
INSERT INTO Roles VALUES ('Assistant Manager', 'Helps Managers', 'B02');
INSERT INTO Roles VALUES ('System Administrator', 'Handles Servers', 'B04');
INSERT INTO Roles VALUES ('CEO', 'Runs the company', 'B03');

INSERT INTO Users VALUES (0001, 'user1', 'user1@gmail.com', '9988776655', '#1, Bank street, Bangalore', 'agent1', 'Agent');
INSERT INTO Users VALUES (0002, 'user2', 'user2@gmail.com', '9922776655', '#2, Church street, Bangalore', 'agent2', 'Manager');
INSERT INTO Users VALUES (0003, 'user3', 'user3@gmail.com', '9933776655', '#3, Food street, Bangalore', 'agent3', 'Assistant Manager');
INSERT INTO Users VALUES (0004, 'user4', 'user4@gmail.com', '9944776655', '#4, Bank Lane, Bangalore', 'agent4', 'System Administrator');
INSERT INTO Users VALUES (0005, 'user5', 'user5@gmail.com', '9966776655', '#5, Bank street, Bangalore', 'agent5', 'CEO');


INSERT INTO Customer VALUES (00101, 0001, 'customer1', '8899776655', 'customer1@gmail.com', '#7, UB City, Bangalore');
INSERT INTO Customer VALUES (00102, 0001, 'customer2', '8899776644', 'customer2@gmail.com', '#8, UB City, Bangalore');
INSERT INTO Customer VALUES (00103, 0002, 'customer3', '8899776633', 'customer3@gmail.com', '#9, UB City, Bangalore');
INSERT INTO Customer VALUES (00104, 0002, 'customer4', '8899776622', 'customer4@gmail.com', '#10, UB City, Bangalore');
INSERT INTO Customer VALUES (00105, 0001, 'customer5', '8899776611', 'customer5@gmail.com', '#12, UB City, Bangalore');

INSERT INTO Vehicle VALUES (00201, 'KA 05 MC 1234', 'SUV', 'Blue Honda SUV', 00101);
INSERT INTO Vehicle VALUES (00202, 'KA 05 MC 1235', 'Sedan', 'Grey Mercedees Sedan', 00102);
INSERT INTO Vehicle VALUES (00203, 'KA 05 MC 2234', 'Hatch', 'White Kia hatchback', 00103);
INSERT INTO Vehicle VALUES (00204, 'KA 05 MC 1134', 'Truck', 'Red freight truck', 00104);
INSERT INTO Vehicle VALUES (00205, 'KA 05 MC 1255', 'Van', 'Maruti School Van', 00105);

INSERT INTO Registration VALUES (00201, 'KA 05 MC 1234', 'SUV', '2020-01-08');
INSERT INTO Registration VALUES (00202, 'KA 05 MC 1235', 'Sedan', '2020-01-08');
INSERT INTO Registration VALUES (00203, 'KA 05 MC 2234', 'Hatch', '2020-01-08');
INSERT INTO Registration VALUES (00204, 'KA 05 MC 1134', 'Truck', '2020-01-08');
INSERT INTO Registration VALUES (00205, 'KA 05 MC 1255', 'Van', '2020-01-08');

INSERT INTO Insurance VALUES (00301, 00201, 'KA 05 MC 1234', 00101, 'Basic', '2022-01-08');
INSERT INTO Insurance VALUES (00302, 00202, 'KA 05 MC 1235', 00102, 'Basic', '2022-01-08');
INSERT INTO Insurance VALUES (00303, 00203, 'KA 05 MC 2234', 00103, 'Basic', '2022-01-08');
INSERT INTO Insurance VALUES (00304, 00204, 'KA 05 MC 1134', 00104, 'Basic', '2022-01-08');
-- INSERT INTO Insurance VALUES (00305, 00205, 'KA 05 MC 1255', 00105, 'Basic', '2022-01-08');
INSERT INTO Insurance VALUES (00305, 00205, 'KA 05 MC 1255', 00105, 'Basic', '2022-01-08');
