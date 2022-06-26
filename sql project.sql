				
								/* EMPLOYEE PAYROLL DATABASE
									BY SWAGATA NASKAR
										19EC30047 */

create database Salary_payscale;
use  Salary_payscale;

										/*Employee Details*/

CREATE TABLE Employee(
Employee_Id Bigint(6),
First_Name VARCHAR(25),
Last_Name VARCHAR(25),
Hire_Date DATE,
City VARCHAR(25),
State VARCHAR(25),
constraint primary key(Employee_Id)
);

INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State  )
VALUES (1,'Rajeev','Joshi','14-04-21','Haridwar','Uttarakhand');
INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State   )
VALUES (2,'Pankaj','Gurian','19-05-21','Mujaffarpur','Bihar');
INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State   )
VALUES (3,'Sandeep','Meena','13-08-21','Varanashi','Varanashi');
INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State )
VALUES (4,'Jay','Kumar soni','9-09-21','Sikar','Rajasthan');
INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State  ) 
VALUES (5,'Alok','Oran','16-10-21','Sikar','rajasthan');
INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State  )
VALUES (6,'Varun','Choudhary','17-10-21','Ujjain','Madhya-Pradesh');
INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State )
VALUES (7,'Ritik','Saini','5-11-21','Jodhpur','Rajasthan');
INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State ) 
VALUES (8,'Samannay','Roy','12-12-21','Kharagpur','West-Bengal');
INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State  )
VALUES (9,'Avinash','Kumar','29-12-21','chapra','Bihar');
INSERT INTO Employee ( Employee_Id , First_Name , Last_Name , Hire_Date , City , State )
VALUES (10,'Ayush','Kumar','21-06-22','San Francisco','California');

										/*Education*/
 
  CREATE TABLE Education(
  Education_Id int(9),
  Employee_Id int(9),
  Degree VARCHAR(30),
  Graduation_Year int(4),
  CONSTRAINT Location_PK PRIMARY KEY (Education_Id),
  FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id)
	);
        
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year)
VALUES (10,1,'MBA',2017);
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year)
VALUES (11,2,'MCA',2019);
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year)
VALUES (12,4,'B.TECH',2011);
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year) 
VALUES (13,8,'MS',2015);
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year)
VALUES (14,9,'Bachelor',2013);
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year)
VALUES (15,7,'Bachelor',2008);
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year)
VALUES (16,5,'MBAr',2012);
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year)
VALUES (17,6,'BBA',2015);
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year)
VALUES (18,10,'M.TECH',2014);
INSERT INTO Education ( Education_Id, Employee_Id , Degree ,  Graduation_Year)
VALUES (19,3,'M.TECH',2011);

								/*Employee Department Details*/

CREATE TABLE Department (
    Department_Id int(5),
    Department_Name VARCHAR(30),
    constraint primary key(Department_Id));
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (1,'Human Resources');
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (2,'Software Development');
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (3,'Data Analysis');
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (4,'Data Science');
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (5,'Business Intelligence');
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (6,'Data Engineering');
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (7,'Manufacturing');
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (8,'Quality Control');
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (9,'Quality Control');
INSERT INTO Department ( Department_Id ,  Department_Name )
VALUES (10,'Software Development');

									/*Department Project Details */

  CREATE TABLE DepartmentProject(
  Department_Id int(9),
  Project_Id int(9),
  CONSTRAINT PRIMARY KEY (Department_Id)
  );
alter table DepartmentProject add Project_name varchar(20);
alter table DepartmentProject add  Project_Description VARCHAR(50);

INSERT INTO DepartmentProject( Department_Id, Project_Id, Project_name ,Project_Description )
VALUES (1,21,'River Construction','water resources projects');
INSERT INTO DepartmentProject( Department_Id, Project_Id , Project_name,Project_Description  )
VALUES (2,22, 'Palace Constraction',' need to repair palace');
INSERT INTO DepartmentProject( Department_Id, Project_Id , Project_name ,Project_Description )
VALUES (3,23, 'Town Construction','Build new roads');
INSERT INTO DepartmentProject( Department_Id, Project_Id , Project_name ,Project_Description )
VALUES (4,24,'River Construction','water resources projects');
INSERT INTO DepartmentProject( Department_Id, Project_Id ,Project_name,Project_Description  )
VALUES (5,25,'Palace Constraction',' need to repair palace');
INSERT INTO DepartmentProject( Department_Id, Project_Id, Project_name ,Project_Description )
VALUES (6,26,'Town Construction','Build new roads');
INSERT INTO DepartmentProject( Department_Id, Project_Id,Project_name ,Project_Description )
VALUES (7,27,'River  Construction','water resources projects');
INSERT INTO DepartmentProject( Department_Id, Project_Id,Project_name ,Project_Description )
VALUES (8,28,'Palace Constraction',' need to repair palace');
INSERT INTO DepartmentProject( Department_Id, Project_Id,Project_name ,Project_Description )
VALUES (9,29,'Town Construction','Build new roads');
INSERT INTO DepartmentProject( Department_Id, Project_Id,Project_name ,Project_Description )
VALUES (10,30,'River Construction','water resources projects');


										/* Account Details */
  
  CREATE TABLE AccountDetails(
  Account_Id int(9),
  Bank_Name VARCHAR(50),
  IFSC_CODE varchar(16),
  Account_number VARCHAR(50),
  Employee_Id int(9),
  CONSTRAINT Account_PK PRIMARY KEY (Account_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );

INSERT INTO AccountDetails ( Account_Id,   Bank_Name ,IFSC_CODE,  Account_number ,   Employee_Id )
VALUES (40,'Bank of India','BOINF0321','BOI326598',1);
INSERT INTO AccountDetails ( Account_Id,   Bank_Name , IFSC_CODE, Account_number ,   Employee_Id )
VALUES (41,'State Bank Of India','SBINF7854','SBI895432',2);
INSERT INTO AccountDetails ( Account_Id,   Bank_Name ,IFSC_CODE,  Account_number ,   Employee_Id )
VALUES (42,'Bank Of Baroda','BOBNF6598','BOB988756',3);
INSERT INTO AccountDetails ( Account_Id,   Bank_Name , IFSC_CODE, Account_number ,   Employee_Id )
VALUES (43,'State Bank Of India','SBINF2698','SBI154852',4);
INSERT INTO AccountDetails ( Account_Id,   Bank_Name , IFSC_CODE, Account_number ,   Employee_Id )
VALUES (44,'Bank Of Baroda','BOBNF5678','BOB457854',5);
INSERT INTO AccountDetails ( Account_Id,   Bank_Name , IFSC_CODE, Account_number ,   Employee_Id )
VALUES (45,'Punjab National Bank','PUNBF9510','PNB257896',6);
INSERT INTO AccountDetails ( Account_Id,   Bank_Name , IFSC_CODE, Account_number ,   Employee_Id ) 
VALUES (46,'State Bank Of India','SBINF7530','SBI789545',7);
INSERT INTO AccountDetails ( Account_Id,   Bank_Name , IFSC_CODE, Account_number ,   Employee_Id )
VALUES (47,'Punjab National Bank','PUNBF6540','PNB985624',8);
INSERT INTO AccountDetails ( Account_Id,   Bank_Name , IFSC_CODE, Account_number ,   Employee_Id ) 
VALUES (48,'Bank Of Baroda','BOBNF1573','BOB136587',9);
INSERT INTO AccountDetails ( Account_Id,   Bank_Name , IFSC_CODE, Account_number ,   Employee_Id )
VALUES (49,'ICICI Bank','ICICI0691','ICI698715',10);


										/* Salary Details*/

CREATE TABLE Salary(
  Salary_Id int(9),
  Gross_Salary int(9),
  Hourly_Pay int(9),
  State_Tax int(9),
  Federal_Tax int(9),
  Account_Id int(9),
  CONSTRAINT PRIMARY KEY (Salary_Id)
  );
  
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
VALUES (1,57600,30,200,1000,40);
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
VALUES (2,76800,40,300,1300,41);
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
 VALUES (3,96000,50,400,1500,42);
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
 VALUES (4,115200,60,500,1700,43);
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
VALUES (5,57600,30,200,1000,44);
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
VALUES (6,76800,40,300,1300,45);
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
VALUES (7,96000,50,400,1500,46);
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
VALUES (8,115200,60,500,1700,47);
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
VALUES (9,57600,30,200,1000,48);
INSERT INTO Salary ( Salary_Id , Gross_Salary , Hourly_Pay , State_Tax ,  Federal_Tax , Account_Id )
VALUES (10,76800,40,300,1300,49);

show tables;
select* from Department;

													/*Employee Attendance  */
  
  CREATE TABLE Employee_Attendance(
  Employee_Id int(9),
  Attendance_Id int(9),
  Hours_Worked varchar(9),
  CONSTRAINT PRIMARY KEY (Employee_Id)
  );
  
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked   )
VALUES (1,90,21 );
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked  )
VALUES (2,91,20);
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked   )
VALUES (3,92,30);
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked   )
VALUES (4,93,40);
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked   )
VALUES (5,94,45);
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked  )
VALUES (6,95,48);
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked  )
VALUES (7,96,28);
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked  ) 
VALUES (8,97,19);
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked  )
VALUES (9,98,23);
INSERT INTO Employee_Attendance ( Employee_Id ,  Attendance_Id , Hours_Worked   )
VALUES (10,99,27);


												/* Employee leave */

  CREATE TABLE Employee_Leave(
  Employee_Id int(9),
  Leave_starting_date int(10),
  Leave_ending_date int(10),
  Reason varchar(100),
  CONSTRAINT  PRIMARY KEY (Employee_Id)
  );
  
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date  , Reason )
VALUES (1, '12-09-21' , '13-09-21' , 'Fever');
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date  , Reason )
VALUES (2,'13-09-21' , '15-09-21' , 'Going Outside');
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date , Reason )
VALUES (3,'14-09-21' , '17-09-21 ', 'For Rain');
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date  , Reason )
VALUES (4,'15-09-21' , '16-09-21' , 'Shaadi');
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date  , Reason )
VALUES (5,'16-09-21' , '18-09-21' , 'Personal problem');
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date  , Reason )
VALUES (6,'17-09-21' ,' 19-09-21' , 'Doctor appointment');
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date  , Reason )
VALUES (7,'18-09-21' , '22-09-21' , 'Day Off');
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date  , Reason )
VALUES (8,'19-09-21' , '23-09-21' , 'Party');
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date  , Reason )
VALUES (9,'20-09-21 ', '21-09-21' , 'Honneymoon');
INSERT INTO Employee_Leave ( Employee_Id , Leave_starting_date , Leave_ending_date  , Reason )
VALUES (10,'21-09-21' , '22-09-21' , 'Fever');




																		/* THE END*/
 