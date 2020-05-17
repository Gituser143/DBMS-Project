INSERT INTO Users VALUES (0001, 'user1@gmail.com', '9988776655', '#1, Bank street, Bangalore', 'user1');
INSERT INTO Users VALUES (0002, 'user2@gmail.com', '9922776655', '#2, Church street, Bangalore', 'user2');
INSERT INTO Users VALUES (0003, 'user3@gmail.com', '9933776655', '#3, Food street, Bangalore', 'user3');
INSERT INTO Users VALUES (0004, 'user4@gmail.com', '9944776655', '#4, Bank Lane, Bangalore', 'user4');
INSERT INTO Users VALUES (0005, 'user5@gmail.com', '9966776655', '#5, Bank street, Bangalore', 'user5');

INSERT INTO Roles VALUES (0001, 'Agent', 'Simple user Agent');
INSERT INTO Roles VALUES (0002, 'Agent', 'Simple user Agent');
INSERT INTO Roles VALUES (0003, 'Manager', 'Manages agents');
INSERT INTO Roles VALUES (0004, 'Manager', 'Manages agents');
INSERT INTO Roles VALUES (0005, 'CEO', 'Leads Managers');

INSERT INTO Login_Credentials VALUES (0001, 'pass1', 'what is your mothers name?');
INSERT INTO Login_Credentials VALUES (0002, 'pass2', 'what is your fathers name?');
INSERT INTO Login_Credentials VALUES (0003, 'pass3', 'what is your sisters name?');
INSERT INTO Login_Credentials VALUES (0004, 'pass4', 'what is your dogs name?');
INSERT INTO Login_Credentials VALUES (0005, 'pass5', 'what is your mothers DOB?');

INSERT INTO Customer VALUES (00101, 0001, 'customer1', '8899776655', 'customer1@gmail.com', '#7, UB City, Bangalore');
INSERT INTO Customer VALUES (00102, 0001, 'customer2', '8899776644', 'customer2@gmail.com', '#8, UB City, Bangalore');
INSERT INTO Customer VALUES (00103, 0002, 'customer3', '8899776633', 'customer3@gmail.com', '#9, UB City, Bangalore');
INSERT INTO Customer VALUES (00104, 0002, 'customer4', '8899776622', 'customer4@gmail.com', '#10, UB City, Bangalore');
INSERT INTO Customer VALUES (00105, 0001, 'customer5', '8899776611', 'customer5@gmail.com', '#12, UB City, Bangalore');

INSERT INTO Vehicle VALUES (00201, 'KA05MC1234', 'SUV', 'Blue SUV', 00101);
INSERT INTO Vehicle VALUES (00202, 'KA05MC1235', 'Sedan', 'Grey Sedan', 00102);
INSERT INTO Vehicle VALUES (00203, 'KA05MC2234', 'Hatch', 'White hatchback', 00103);
INSERT INTO Vehicle VALUES (00204, 'KA05MC1134', 'Truck', 'Red truck', 00104);
INSERT INTO Vehicle VALUES (00205, 'KA05MC1255', 'Van', 'School Van', 00105);

INSERT INTO Registration VALUES (00201, 'KA05MC1234', 'SUV', '2020-01-08');
INSERT INTO Registration VALUES (00202, 'KA05MC1235', 'Sedan', '2020-01-08');
INSERT INTO Registration VALUES (00203, 'KA05MC2234', 'Hatch', '2020-01-08');
INSERT INTO Registration VALUES (00204, 'KA05MC1134', 'Truck', '2020-01-08');
INSERT INTO Registration VALUES (00205, 'KA05MC1255', 'Van', '2020-01-08');

INSERT INTO Insurance VALUES (00301, 00201, 'KA05MC1234', 00101, 'Basic', '2022-01-08');
INSERT INTO Insurance VALUES (00302, 00202, 'KA05MC1235', 00102, 'Basic', '2022-01-08');
INSERT INTO Insurance VALUES (00303, 00203, 'KA05MC2234', 00103, 'Basic', '2022-01-08');
INSERT INTO Insurance VALUES (00304, 00204, 'KA05MC1134', 00104, 'Basic', '2022-01-08');
-- INSERT INTO Insurance VALUES (00305, 00205, 'KA05MC1255', 00105, 'Basic', '2022-01-08');
INSERT INTO Insurance VALUES (00305, 00205, 'KA05MC1255', 00105, 'Basic', '2022-01-08');
