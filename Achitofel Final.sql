
--Tables	Name
--1		Employees
--2		RelativesEmployees
--3		Addresses_RelativesEmployees
--4		Benefits_Bonuses
--5		Customers
--6		Teams
--7		Projects
--8		ProjectEmployees
--9		HoursReportEmployees
--10	BranchesCustomers
--11	Managers_Customers
--12	ExecutivesDetailsCustomers
--13	Currency_Exchange_Rates
--14	Invoices
--15	ManagerHearing
--16	HRHearings
--17	Metrics
--18	EmploymentCost

create database Achitofel
--table 1
use Achitofel
go
Create table Employees
(
EmployeeID				int				Not Null		Identity	(1,1)	,
ID						char(9)			 Not Null				,
Title					int				 Not Null				,
LastName				nvarchar(50)	 Not Null				,
FirstName				nvarchar(50)	 Not Null				,
TitleOfCourtesy			int				 Not Null				,
Gender					int				 Not Null				,
Status_					int				 Not Null				,
BirthDate				datetime		 Not Null				,
HireDate				datetime		 Not Null				,
EndDate					datetime		Null					,
SDailyWHours			float 			 Not Null				,
SalaryFirstBasic		money			 Not Null				,
SalaryCurrentBasic		money			 Not Null				,
MobilePrivate			nvarchar(25)	Null					,
MobileBusiness			nvarchar(25)	 Not Null				,
EmailPrivate			nvarchar(50)	Null					,
EmailBusiness			nvarchar(50)	 Not Null				,
Extension				nvarchar(6)		Null					,
ReportsTo				int				Null					,
Notes					nvarchar(200)	Null				
)


--table 2
Create table RelativesEmployees
(
EmployeeID				int				 Not Null				,
ID						char(9)			 Not Null				,
Relationship			int				 Not Null				,
LastName				nvarchar(35)	 Not Null				,
FirstName				nvarchar(35)	 Not Null				,
TitleOfCourtesy			int				 Not Null				,
BirthDate				datetime		 Not Null				,
Gender					int				 Not Null				
)


--table 3
Create table Addresses_RelativesEmployees
(
ID						int				Not Null		Identity	(1,1)	,
AddressType				int				 Not Null				,
Street					nvarchar(50)	 Not Null				,
House#					nvarchar(50)	 Not Null				,
Unit_Flat#				nvarchar(10)	Null					,
City					nvarchar(50)	 Not Null				,
Region					nvarchar(50)	Null					,
Postcode 				nvarchar(50)	Null					,
Country 				nvarchar(50)	 Not Null				,
NotesDelivery			nvarchar(200)	Null					,
HomePhone 				nvarchar(50)	Null				
)


--table 4
Create table Benefits_Bonuses
(
SocialCode				Int				 Not Null		Identity	(1,1)	,
BenefitName				nvarchar(200)	 Not Null				,
PercentageBenefit		float			 Not Null				,
PercentageSalary		float			 Not Null				,
SalaryCode				int				 Not Null			
)


--table 5
Create table Customers
(
CustomerID				int				Not Null		Identity	(1,1)	,
CompanyName				nvarchar(50)	Not Null				,
CompanySize				int				Not Null				,
Industry				nvarchar(50)	NULL					,
Nationality				int				Not Null				,
TeamID					Int				Not Null				,
BlackList				int				 Not Null				
)


--table 6
Create table Teams
(
TeamID					int				Not Null		Identity	(1,1)	,
EmployeeID				int				Not Null				
)


--table 7
Create table Projects
(
ProjectID				int				Not Null		Identity	(1,1)	,
CustomerManagerID		int				Not Null				,
CustomerID				int				Not Null				,
ProjectName				nvarchar(50)	Not Null				,
StartDate				datetime		Not Null				,
EndDateEstimate			datetime		Not Null				,
EndDateActual			datetime		Not Null				,
Description_			nvarchar(200)	Not Null				,
BlackList				int				Not Null				,
NotesBL					nvarchar(200)	Not Null				
)


--table 8
Create table ProjectEmployees
(
EmployeeID				int				Not Null				,
ProjectID				int				Not Null				,
ProjectRateHourly		int				Not Null				
)


--table 9
Create table HoursReportEmployees	
(
ProjectID				int				Not Null				,
EmployeeID				int				Not Null				,
ReportDate				datetime		Not Null	 default GETDATE()	,
StartHour				datetime		Not Null				,
EndHour					datetime		Not Null				,
CustomerBranchID		int   	        Not Null		
)


--table 10
create table BranchesCustomers
(
CustomerID				int				Not Null				,
CustomerBranchID		int				Not Null		Identity	(1,1)	,
Street					nvarchar(50)	Null				,
House#					nvarchar(50)	Null				,
Unit_Flat#				nvarchar(10)	Null				,
City					nvarchar(50)	Null				,
Region					nvarchar(50)	Null				,
PostCode				nvarchar(50)	Null				,
Country					nvarchar(50)	Null				,
DistanceAchitofel		nvarchar(200)	Not Null			,
NotesDelivery			nvarchar(200)	Null				,
HomePhone				nvarchar(25)	Null				,
Fax						nvarchar(25)	Null				
)


--table 11
Create table Managers_Customers
(
CustomerID				int				Not Null				,
CustomerManagerID		int				Not Null		identity	(1,1)	,
ManagerType				int				Not Null				,
LastName				nvarchar(50)	Not Null				,
FirstName				nvarchar(50)	Not Null				,
TitleOfCourtesy			int				Not Null				,
Gender					int				Not Null				,
BirthDate				datetime		Not Null				,
CakeFlavor				nvarchar(100)	Not Null				,
Notes					nvarchar(200)	Null					,
Street					nvarchar(50)	 Not Null				,
House#					nvarchar(50)	 Not Null				,
Unit_Flat#				nvarchar(10)	Null					,
City					nvarchar(50)	 Not Null				,
Region					nvarchar(50)	Null					,
Postcode 				nvarchar(50)	Null					,
Country 				nvarchar(50)	 Not Null				,
NotesDelivery			nvarchar(200)	Null					,
HomePhone 				nvarchar(50)	Null				
)


--table 12
Create table ExecutivesDetailsCustomers			
(
CustomerManagerID		int				Not Null		identity	(1,1)	,
Relationship			nvarchar(10)	Not Null				,
FirstName				nvarchar(50)	Not Null				,
LastName				nvarchar(50)	Not Null				,
Birthdate				datetime		Not Null				,
Street					nvarchar(50)	Not Null				,
House#					nvarchar(50)	Not Null				,
Unit_Flat#				nvarchar(10)	Null					,
City					nvarchar(50)	Not Null				,
Region					nvarchar(50)	Null					,
Postcode 				nvarchar(50)	Null					,
Country 				nvarchar(50)	Not Null				,
NotesDelivery			nvarchar(200)	Null					,
CakeFlavor				nvarchar(100)	Not Null				,
HomePhone				nvarchar(25)	Not Null				
)


--table 13
Create table Currency_Exchange_Rates													
(
CurrencyType			int				Not Null				,
ExchangeValue			money			Not Null				
)


--table 14
Create table Invoices
(
InvoiceNumber			int				Not Null		identity	(1,1)	,
CustomerID				int				Not Null				,
DateIssued				datetime		Not Null				,
BlackListFee			float			Null			default	0			,
DueDate					datetime		Not Null				,
DatePaid				datetime		Null					,
TotalFees				money			Not Null				,
Discount				float			Null			default 0			,
AmountPayable			money			Not Null				,
Notes					nvarchar(200)	Null		
)


--table 15
Create table ManagerHearing
(
EmployeeID				int				Not Null				,
HearingDate 			datetime		Not Null				,
Details					nvarchar(200)	Not Null				,
Decision				int				Not Null				,
ReportToHR				binary(50)		Null				
)


--table 16
Create table HRHearing
(
EmployeeID				int				Not Null				,
HearingDate 			datetime		Not Null				,
Details					nvarchar(100)	Not Null				,
Decision				int				Not Null				,
Warning# 				int				Null					,
Notes					nvarchar(100)	Null					,
DateLetterSocialSecurity datetime		Null				
)


--table 17
Create table Metrics
(
Code					int				Not Null		identity	(1,1)	,
ParameterType			int				Not Null				,
Details					nvarchar(200)	 Not Null				,
ValuePoint				float			 Not Null				,
StartDate				datetime		 Not Null				,
EndDate					datetime		 Not Null				
)


--table 18
Create table EmploymentCost
(
EmployeeID				int				Not Null				,
CostDate				datetime		Not Null				,
SalaryCurrentBasic		money			Not Null				,
Benefits				int				Not Null				,
OverTime				int				Null					,
ManagementBonus			int				Null					,
Travel					int				Null					,
VacationDays			int				Not Null				,
Tax						int				Null				
)

Use Achitofel
Go
-- 1.ADD PK

	ALTER TABLE												Employees
	ADD CONSTRAINT		PK_Employees						PRIMARY KEY (EmployeeID)
	ALTER TABLE												RelativesEmployees
	ADD CONSTRAINT		PK_RelativesEmployees				PRIMARY KEY (ID)
	ALTER TABLE												Addresses_RelativesEmployees
	ADD CONSTRAINT		PK_Addresses_RelativesEmployees		PRIMARY KEY (ID)
	ALTER TABLE												Benefits_Bonuses
	ADD CONSTRAINT		PK_Benefits_Bonuses					PRIMARY KEY (SocialCode)
	ALTER TABLE												Customers
	ADD CONSTRAINT		PK_Customers						PRIMARY KEY (CustomerID)
	ALTER TABLE												Teams
	ADD CONSTRAINT		PK_Teams							PRIMARY KEY (TeamID)
	ALTER TABLE												Projects
	ADD CONSTRAINT		PK_Projects							PRIMARY KEY (ProjectID)
	ALTER TABLE												ProjectEmployees
	ADD CONSTRAINT		PK_ProjectEmployees					PRIMARY KEY (EmployeeID,ProjectID)
	ALTER TABLE												HoursReportEmployees
	ADD CONSTRAINT		PK_HoursReportEmployees				PRIMARY KEY (EmployeeID)	
	ALTER TABLE												BranchesCustomers
	ADD CONSTRAINT		PK_BranchesCustomers				PRIMARY KEY (CustomerBranchID)
	ALTER TABLE												Managers_Customers
	ADD CONSTRAINT		PK_Managers_Customers				PRIMARY KEY (CustomerManagerID)
	ALTER TABLE												ExecutivesDetailsCustomers
	ADD CONSTRAINT		PK_ExecutivesDetailsCustomers		PRIMARY KEY (CustomerManagerID)
	ALTER TABLE												Currency_Exchange_Rates
	ADD CONSTRAINT		PK_Currency_Exchange_Rates			PRIMARY KEY (CurrencyType)
	ALTER TABLE												Invoices
	ADD CONSTRAINT		PK_Invoices							PRIMARY KEY (InvoiceNumber)
	ALTER TABLE												ManagerHearing
	ADD CONSTRAINT		PK_ManagerHearing					PRIMARY KEY (EmployeeID)
	ALTER TABLE												HRHearing
	ADD CONSTRAINT		PK_HRHearing						PRIMARY KEY (EmployeeID)
	ALTER TABLE												Metrics
	ADD CONSTRAINT		PK_Metrics							PRIMARY KEY (Code)
	ALTER TABLE												EmploymentCost
	ADD CONSTRAINT		PK_EmploymentCost					PRIMARY KEY (EmployeeID)

-- 2.ADD FK
	ALTER TABLE													Employees
	ADD FOREIGN KEY		(ReportsTo)			REFERENCES			Employees(EmployeeID)
	ALTER TABLE													RelativesEmployees
	ADD FOREIGN KEY		(EmployeeID)		REFERENCES			Employees(EmployeeID)
	--table 4 no FK-- ALTER TABLE Benefits_Bonuses
	
	ALTER TABLE													Customers
	ADD FOREIGN KEY		(TeamID)			REFERENCES			Teams(TeamID)
	ALTER TABLE													Teams
	ADD FOREIGN KEY		(EmployeeID)		REFERENCES			Employees(EmployeeID)
	ALTER TABLE													Projects
	ADD FOREIGN KEY		(CustomerID)		REFERENCES			Customers(CustomerID),	
	FOREIGN KEY			(CustomerManagerID) REFERENCES			Managers_Customers(CustomerManagerID)
	ALTER TABLE													ProjectEmployees
	ADD FOREIGN KEY		(ProjectID)			REFERENCES			Projects(ProjectID),
	FOREIGN KEY			(EmployeeID)		REFERENCES			Employees(EmployeeID)
	ALTER TABLE													HoursReportEmployees
	ADD FOREIGN KEY		(ProjectID)			REFERENCES			Projects(ProjectID),
	FOREIGN KEY			(EmployeeID)		REFERENCES			Employees(EmployeeID),
	FOREIGN KEY			(CustomerBranchID)	REFERENCES			BranchesCustomers(CustomerBranchID)
	ALTER TABLE													BranchesCustomers
	ADD FOREIGN KEY		(CustomerID)		REFERENCES			Customers(CustomerID)
	ALTER TABLE													Managers_Customers
	ADD FOREIGN KEY		(CustomerID)		REFERENCES			Customers(CustomerID)
	ALTER TABLE													ExecutivesDetailsCustomers
	ADD FOREIGN KEY		(CustomerManagerID)	REFERENCES			Managers_Customers(CustomerManagerID)
	--- NO FK TABLE Currency_Exchange_Rates
	ALTER TABLE													Invoices
	ADD FOREIGN KEY		(CustomerID)		REFERENCES			Customers(CustomerID)	
	ALTER TABLE													ManagerHearing
	ADD FOREIGN KEY		(EmployeeID)		REFERENCES			Employees(EmployeeID)
	ALTER TABLE													HRHearing
	ADD FOREIGN KEY		(EmployeeID)		REFERENCES			Employees(EmployeeID)
	--- NO FK  TABLE Metrics
	ALTER TABLE													EmploymentCost
	ADD FOREIGN KEY		(EmployeeID)		REFERENCES			Employees(EmployeeID)
---
 --3 ADD Constraints
	
	-- Table 1 - Employees: AGE >18
	ALTER TABLE Employees with check
	ADD Constraint AGE_18
	Check (datedifF(yy,birthdate, getdate())>=18)
	
	--- Table 1 - Employees: hiredate>getdate      
	ALTER TABLE employees with check
	ADD Constraint Hiredate
	Check (hiredate>getdate())
	
	--- Table 1 - Employees: ENDDATE>HIREDATE      - Can be changed to getdate()
	ALTER TABLE Employees with check
	ADD Constraint Enddate
	Check (enddate>hiredate)
	
	--- Table 1 - Employees: Max standart daily working hour - 9
	ALTER TABLE Employees with check
	ADD Constraint Limit_working_hours
	Check (SDailyWHours<=9)
	
	--- Table 2 - RelativesEmployees:birthdate>getdate()
ALTER TABLE RelativesEmployees with check
ADD Constraint Birthdate_emp_relatives
Check ((birthdate>getdate())
 ADD IF CHILD THEN AGE<-18 ???
	
	--- Table 4 - Benefits_Bonuses : benefits will be given for max 100% of employee's salary
	ALTER TABLE Benefits_Bonuses
	ADD Constraint PercentageSalary
	Check (PercentageSalary<=1)


	---Table 7 - Projects - Can not open new project for  a no billed customer	
	ALTER TABLE projects  with nocheck
	ADD CONSTRAINT BlackList 
	check 	( dbo.fn_no_billed_customers (customerid) = 1 )  
	GO

	create function dbo.fn_no_billed_customers( @customerid int )  
	returns bit  
	as 
	begin
	-- black list return  0   -- other  - retrun 1
		declare @b bit = 1 
		if exists		 ( select 1
				from Invoices 
				where CustomerID = @customerid 
				and getdate()>duedate and datepaid is null)
		set @b =0
		return @b
	end

----Table 7 - Projects - EndDateEstimate>StartDate
	ALTER TABLE Projects with check
	ADD Constraint ProjectEndDateEstimate
	Check (EndDateEstimate>StartDate)


----Table 7 - Projects - EndDateActual>StartDate
	ALTER TABLE Projects with check
	ADD Constraint ProjectEndDateActual
	Check (EndDateActual>StartDate)

----Table 8 - ProjectEmployees  - cant add employees to project in the blacklist (works on project id)

ALTER TABLE ProjectEmployees  with nocheck
	ADD CONSTRAINT BlackList_ProjectEmployees 
	check 	( dbo.fn_blackproject (projectid) = 1 )  
	GO

	create function dbo.fn_blackproject( @projectid int )  
	returns bit  
	as 
	begin
	-- black list return  0   -- other  - retrun 1
		declare @b bit = 1 
		if exists		 ( select 1
				from projects
				where ProjectID = @ProjectID and blacklist =1)
				set @b =0
		return @b
	end

----Table 9 - HoursReportEmployees  - employee can not report hours for project in the blacklist (works on project id)

	ALTER TABLE HoursReportEmployees  with nocheck
	ADD CONSTRAINT BlackList_HoursReportEmployees
	CHECK	( dbo.fn_blackproject (projectid) = 1 )  
	GO
----Table 9 - HoursReportEmployees  - Endhoue>starthour
ALTER TABLE HoursReportEmployees  with check
ADD Constraint HoursReportEmployees_endhour
CHECK (endhour>starthour)
	
--TABLE 11 - Managers_Customers - age>18

	ALTER TABLE Managers_Customers with check
	ADD Constraint Managers_Customers_AGE_18
	CHECK (datedifF(yy,birthdate, getdate())>=18)	
	
ALTER TABLE [dbo].[Employees]  WITH NOCHECK ADD  
CONSTRAINT [CK_Employees] CHECK  (([dbo].[CheckAgeCity]([city],[birthdate])=(1)))
GO

--Combo box table 
--1. TitleC 
--1.2 create table
Create table TitleC
(
TitleID	int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (TitleID)
)
-- 1.3 FK
ALTER TABLE													Employees 
ADD FOREIGN KEY		(Title)			REFERENCES			TitleC(TitleID)

--insert values Manager, Advisor, CEO, PA
INSERT dbo.TitleC (value)
VALUES ('Manager'),
       ('Advisor'),
	   ('CEO'),
	   ('PA');
	   go

--2. TitleOfCourtesyC
--2.1 Change TitleOfCourtesy in Employees and RelativesEmployees to be int 
--2.2 create table
Create table TitleOfCourtesyC
(
TitleOfCourtesy	int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (TitleOfCourtesy)
)
-- 2.3 FK
ALTER TABLE										Employees 
ADD FOREIGN KEY	(TitleOfCourtesy)	REFERENCES	TitleOfCourtesyC(TitleOfCourtesy)
ALTER TABLE										RelativesEmployees
ADD FOREIGN KEY	(TitleOfCourtesy)	REFERENCES	TitleOfCourtesyC(TitleOfCourtesy)
ALTER TABLE										Managers_Customers
ADD FOREIGN KEY	(TitleOfCourtesy)	REFERENCES	TitleOfCourtesyC(TitleOfCourtesy)

--insert values Mr, Ms, Mrs
INSERT dbo.TitleOfCourtesyC (value)
VALUES ('Mr'),
       ('Ms'),
	   ('Mrs');
	   go
--3. GenderC
--3.1 Change Gender in Employees and RelativesEmployees to be int 
--3.2 create table
Create table GenderC
(
GenderID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (GenderID)
)
-- 3.3 FK
ALTER TABLE								Employees 
ADD FOREIGN KEY	(Gender)	REFERENCES	GenderC(GenderID)
ALTER TABLE								RelativesEmployees
ADD FOREIGN KEY	(Gender)	REFERENCES	GenderC(GenderID)
ALTER TABLE								Managers_Customers
ADD FOREIGN KEY	(Gender)	REFERENCES	GenderC(GenderID)

----insert values Male, Female, Other
INSERT dbo.GenderC (value)
VALUES ('Male'),
       ('Female'),
	   ('Other');
	   go
--4. Status_C
--4.1 Change Status_ in Employees to be int 
--4.2 create table
Create table Status_C
(
Status_ID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (Status_ID)
)
-- 4.3 FK
ALTER TABLE								Employees 
ADD FOREIGN KEY	(Status_)	REFERENCES	Status_C(Status_ID)

----insert values Single, Married, Divorced, Widowed, Other
INSERT dbo.Status_C (value)
VALUES ('Single'),
       ('Married'),
	   ('Divorced'),
	   ('Widowed'),
	   ('Other');
	   go
--5. Status_C
--5.1 Change Status_ in Employees to be int 
--5.2 create table
Create table RelationshipC
(
RelationshipID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (RelationshipID)
)
-- 5.3 FK
ALTER TABLE								RelativesEmployees
ADD FOREIGN KEY	(Relationship)	REFERENCES	RelationshipC(RelationshipID)

----insert values partner, child
INSERT dbo.RelationshipC (value)
VALUES ('Partner'),
	   ('Child');
	   go
--6. AddressTypeC
--6.1 Change AddressType in Addresses_RelativesEmployees to be int 
--6.2 create table
Create table AddressTypeC
(
AddressTypeID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (AddressTypeID)
)
-- 6.3 FK
ALTER TABLE								Addresses_RelativesEmployees
ADD FOREIGN KEY	(AddressType)	REFERENCES	AddressTypeC(AddressTypeID)

----insert values main, secondary
INSERT dbo.AddressTypeC (value)
VALUES ('Main'),
	   ('Secondary');
	   go
--7. CompanySizeC
--7.2 create table CompanySizeC
Create table CompanySizeC
(
CompanySizeID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (CompanySizeID)
)
-- 7.3 FK
ALTER TABLE								Customers
ADD FOREIGN KEY	(CompanySize)	REFERENCES	CompanySizeC(CompanySizeID)

----insert values Small, Medium,large
INSERT dbo.CompanySizeC (value)
VALUES ('Small'),
       ('Medium'),
	   ('Large');
	   go
--8. NationalityC
--8.2 create table NationalityC
Create table NationalityC
(
NationalityID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (NationalityID)
)
-- 8.3 FK
ALTER TABLE								Customers
ADD FOREIGN KEY	(Nationality)	REFERENCES	NationalityC(NationalityID)

----insert values Local, Foreign
INSERT dbo.NationalityC (value)
VALUES ('Local'),
	   ('Foreign');
	   go
--9. DecisionMC-MANGER Decision
--9.2 create table DecisionMC
Create table DecisionMC
(
DecisionMID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (DecisionMID)
)
-- 9.3 FK
ALTER TABLE								ManagerHearing
ADD FOREIGN KEY	(Decision)	REFERENCES	DecisionMC(DecisionMID)

----insert values InternalHearing,Wrongreporting

INSERT dbo.DecisionMC (value)
VALUES ('InternalHearing'),
	   ('Wrongreporting');
	   go
-- 10 DecisionHRC - HR Decision
--10.2 create table DecisionHRC
Create table DecisionHRC
(
DecisionHRID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (DecisionHRID)
)
-- 10.3 FK
ALTER TABLE								HRHearing
ADD FOREIGN KEY	(Decision)	REFERENCES	DecisionHRC(DecisionHRID)
----insert values Fire,Warning
INSERT dbo.DecisionHRC (value)
VALUES ('Fire'),
	   ('Warning');
	   go

-- 11.ParameterTypeC
--11.2 create table ParameterTypeC
Create table ParameterTypeC
(
ParameterTypeID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (ParameterTypeID)
)
--11.3 FK
ALTER TABLE								Metrics
ADD FOREIGN KEY	(ParameterType)	REFERENCES	ParameterTypeC(ParameterTypeID)

----insert values Tax point Male,Tax point Male - child,Tax point Female,
--               Tax point Female - child,
---             -Over Rate -Client - Saturday,Over Rate -Client - Holiday,
--                VAT,Over Rate -Client - Saturday& Holiday
INSERT [dbo].[ParameterTypeC] (value)
VALUES ('Tax-point-Male'),
       ('Tax-point-Male-child'),
       ('Tax-point-Female'),
       ('Tax-point-Female-child'),
       ('Over-Rate-Client-Saturday'),
      ('Over-Rate-Client-Holiday'),
      ('VAT'),
      ('Over-Rate-Client-Saturday&Holiday');
	   go
--12. Managers_CustomersC
--12.2 create table Managers_CustomersC
Create table Managers_CustomersC
(
ManagerTypeID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (ManagerTypeID)
)
--12.3 FK
ALTER TABLE								Managers_Customers
ADD FOREIGN KEY	(ManagerType)	REFERENCES	Managers_CustomersC(ManagerTypeID)

----insert values ProjectManager,Executive
INSERT [dbo].Managers_CustomersC (value)
VALUES ('ProjectManager'),
      ('Executive');
	   go

--13.Benefits_BonusesC
--13.2 create table Benefits_BonusesC
Create table Benefits_BonusesC
(
SalaryCodeID int Not Null identity (1,1) ,
Value	nvarchar(50) Not Null,
PRIMARY KEY (SalaryCodeID)
)
--13.3 FK
ALTER TABLE								Benefits_Bonuses
ADD FOREIGN KEY	(SalaryCode)	REFERENCES	Benefits_BonusesC(SalaryCodeID)

-- insert value First,Current
INSERT [dbo].Benefits_BonusesC (value)
VALUES ('First'),
      ('Current');
	   go
--TEMPORAL TABLE 

CREATE SCHEMA History;
GO
----Employees
ALTER TABLE Employees
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_SysStart DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_SysEnd DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE Employees
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.Employees));
--- RelativesEmployees
ALTER TABLE RelativesEmployees
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_Sys1 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys2 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE RelativesEmployees
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.RelativesEmployees));

---Benefits_Bonuses
ALTER TABLE Benefits_Bonuses
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_Sys3 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys4 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE Benefits_Bonuses
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.Benefits_Bonuses));
 
 ---- Customers
 ALTER TABLE Customers
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_Sys5 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys6 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE Customers
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.Customers));
 
 ---Teams
 ALTER TABLE Teams
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_Sys7 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys8 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE Teams
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.Teams));

--Projects
ALTER TABLE Projects
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_Sys9 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys10 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE Projects
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.Projects));
--ProjectEmployees
ALTER TABLE ProjectEmployees
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_Sys11 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys12 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE ProjectEmployees
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.ProjectEmployees));
--HoursReportEmployees
ALTER TABLE HoursReportEmployees
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_Sys13 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys14 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE HoursReportEmployees
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.HoursReportEmployees));
--.BranchesCustomers
ALTER TABLE BranchesCustomers
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_Sys15 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys16 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE BranchesCustomers
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.BranchesCustomers));

--Managers_Customers
ALTER TABLE Managers_Customers
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_SysS17 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys18 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE Managers_Customers
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.Managers_Customers));

--ExecutivesDetailsCustomers
ALTER TABLE ExecutivesDetailsCustomers
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_SysS19 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys20 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE ExecutivesDetailsCustomers
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.ExecutivesDetailsCustomers));
--Currency_Exchange_Rates
ALTER TABLE Currency_Exchange_Rates
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_SysS21 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_SysE22 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE Currency_Exchange_Rates
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.Currency_Exchange_Rates));
--Invoices
ALTER TABLE Invoices
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_Sys22 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys23 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE Invoices
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.Invoices));

--ManagerHearing
ALTER TABLE ManagerHearing
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_SysS24 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys25 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE ManagerHearing
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.ManagerHearing));
--HRHearing
ALTER TABLE HRHearing
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_SysS26 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys27 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE HRHearing
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.HRHearing));
--Metrics
ALTER TABLE Metrics
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_SysS28 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys29 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE Metrics
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.Metrics));

--EmploymentCost 
ALTER TABLE EmploymentCost 
    ADD
	ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
            CONSTRAINT DF_SysS29 DEFAULT SYSUTCDATETIME(),
	ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
            CONSTRAINT DF_Sys30 DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
        PERIOD FOR SYSTEM_TIME (ValidFrom, ValidTo);
GO
ALTER TABLE EmploymentCost 
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = History.EmploymentCost ));

