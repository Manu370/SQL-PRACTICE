 create database tb2;
  use tb2;
  
  CREATE TABLE step(
    id INT   PRIMARY KEY,
    code VARCHAR(100),
    names VARCHAR(100)
);
  drop table step;

CREATE TABLE process (
    id           INT PRIMARY KEY,
    code         VARCHAR(10),
    description  VARCHAR(30),
    recruiter_id INT
);

CREATE TABLE process_step (
    id          INT PRIMARY KEY,
    step_id     INT,
    process_id  INT,
    status      VARCHAR(50),
    priority    INT,
	FOREIGN KEY (step_id) REFERENCES step(id),
	FOREIGN KEY (process_id) REFERENCES process(id)
);
 drop table process_step;
 
CREATE TABLE job_category (
    id  INT PRIMARY KEY,
    code  VARCHAR(10),
    name    VARCHAR(100),
    description VARCHAR(50)
);

CREATE TABLE job_platform (
    id      INT PRIMARY KEY,
    code    VARCHAR(10),
    name    VARCHAR(100),
    descri VARCHAR(100)
);

CREATE TABLE organization (
    id           INT PRIMARY KEY,
    code         VARCHAR(10),
    name         VARCHAR(100),
    description  VARCHAR(100)
);

CREATE TABLE job_position (
    id              INT PRIMARY KEY,
    code            VARCHAR(10),
    position_name   VARCHAR(100),
    description     VARCHAR(100)
);

CREATE TABLE job (
    id               INT PRIMARY KEY,
    code             VARCHAR(10),
    name             VARCHAR(100),
    description      VARCHAR(100),
    date_published   DATETIME,
    job_start_date   DATETIME,
    no_of_vacancies  INT,
    job_category_id  INT,
    position_id      INT,
    job_platform_id  INT,
    org_id           INT,
    process_id       INT,
    CONSTRAINT FOREIGN KEY (job_category_id) REFERENCES job_category(id),
    CONSTRAINT  FOREIGN KEY (position_id)     REFERENCES job_position(id),
    CONSTRAINT  FOREIGN KEY (job_platform_id) REFERENCES job_platform(id),
    CONSTRAINT  FOREIGN KEY (process_id)  REFERENCES organization(id),
    CONSTRAINT  FOREIGN KEY (process_id)  REFERENCES process(id)
);

CREATE TABLE Salesperson (
    Salesperson_ID  INT PRIMARY KEY,
    LastName        VARCHAR(50),
    FirstName       VARCHAR(50)
);

CREATE TABLE Customer (
    Customer_ID     INT PRIMARY KEY,
    LastName        VARCHAR(50),
    FirstName       VARCHAR(50),
    PhoneNumber     VARCHAR(20),
    Address         VARCHAR(100),
    City            VARCHAR(50),
    StateProvince   VARCHAR(50),
    Country         VARCHAR(50),
    PostalCode      VARCHAR(20)
);

CREATE TABLE Mechanic (
    Mechanic_ID     INT PRIMARY KEY,
    LastName        VARCHAR(50),
    FirstName       VARCHAR(50)
);

CREATE TABLE Service (
    Service_ID      INT PRIMARY KEY,
    ServiceName     VARCHAR(100),
    HourlyRate      DECIMAL(10,2)
);

CREATE TABLE Car (
    Car_ID          INT PRIMARY KEY,
    SerialNumber    VARCHAR(50),
    Make            VARCHAR(50),
    Model           VARCHAR(50),
    Colour          VARCHAR(30),
    Year            year,
    CarForSaleYN    CHAR(1)
);

CREATE TABLE Sales_Invoice (
    Invoice_ID          INT PRIMARY KEY,
    InvoiceNumber       VARCHAR(50),
    Date                DATETIME,
    Car_ID              INT,
    Customer_ID         INT,
    Salesperson_ID      INT,
    CONSTRAINT  FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID),
    CONSTRAINT FOREIGN KEY (Customer_ID)    REFERENCES Customer(Customer_ID),
    CONSTRAINT  FOREIGN KEY (Salesperson_ID) REFERENCES Salesperson(Salesperson_ID)
);

CREATE TABLE Service_Ticket (
    Service_Ticket_ID       INT PRIMARY KEY,
    ServiceTicketNumber     VARCHAR(50),
    Car_ID                  INT,
    Customer_ID             INT,
    DateReceived            DATETIME,
    Comments                VARCHAR(100),
    DateReturnedToCustomer  DATETIME,
    CONSTRAINT FOREIGN KEY (Car_ID) REFERENCES Car(Car_ID),
    CONSTRAINT  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Service_Mechanic (
    ServiceMechanic_ID  INT PRIMARY KEY,
    Service_Ticket_ID   INT,
    Service_ID          INT,
    Mechanic_ID         INT,
    Hours               DECIMAL(5,2),
    Comment             VARCHAR(100),
    Rate                DECIMAL(10,2),
    CONSTRAINT  FOREIGN KEY (Service_Ticket_ID) REFERENCES Service_Ticket(Service_Ticket_ID),
    CONSTRAINT FOREIGN KEY (Service_ID)   REFERENCES Service(Service_ID),
    CONSTRAINT FOREIGN KEY (Mechanic_ID)  REFERENCES Mechanic(Mechanic_ID)
);

CREATE TABLE Parts (
    Parts_ID        INT PRIMARY KEY,
    PartNumber      VARCHAR(50),
    Description     VARCHAR(200),
    PurchasePrice   DECIMAL(10,2),
    RetailPrice     DECIMAL(10,2)
);

CREATE TABLE Parts_Used (
    Parts_Used_ID       INT PRIMARY KEY,
    Parts_ID            INT,
    Service_Ticket_ID   INT,
    NumberUsed          INT,
    Price               DECIMAL(10,2),
    CONSTRAINT  FOREIGN KEY (Parts_ID)          REFERENCES Parts(Parts_ID),
    CONSTRAINT  FOREIGN KEY (Service_Ticket_ID) REFERENCES Service_Ticket(Service_Ticket_ID)
);



 -- 3rd table 
CREATE TABLE PROFESSOR (
    PROF_ID     INTEGER PRIMARY KEY,
    PROF_LNAME  VARCHAR(50),
    PROF_FNAME  VARCHAR(50)
);

CREATE TABLE STUDENT (
    STUD_ID      INTEGER PRIMARY KEY,
    STUD_FNAME   VARCHAR(50),
    STUD_LNAME   VARCHAR(50),
    STUD_STREET  VARCHAR(255),
    STUD_CITY    VARCHAR(50),
    STUD_ZIP     VARCHAR(10)
);

CREATE TABLE COURSE (
    COURSE_ID    INTEGER PRIMARY KEY,
    COURSE_NAME  VARCHAR(255)
);

CREATE TABLE ROOM (
    ROOM_ID    INTEGER PRIMARY KEY,
    ROOM_LOC   VARCHAR(50),
    ROOM_CAP   VARCHAR(50),
    CLASS_ID   INTEGER
);

CREATE TABLE CLASS (
    CLASS_ID     INTEGER PRIMARY KEY,
    CLASS_NAME   VARCHAR(255),
    PROF_ID      INTEGER,
    COURSE_ID    INTEGER,
    ROOM_ID      INTEGER,
     FOREIGN KEY (PROF_ID)   REFERENCES PROFESSOR(PROF_ID),
    CONSTRAINT FOREIGN KEY (COURSE_ID) REFERENCES COURSE(COURSE_ID),
    CONSTRAINT  FOREIGN KEY (ROOM_ID)   REFERENCES ROOM(ROOM_ID)
);

-- Add ROOM's FK to CLASS after CLASS exists (avoids circular dependency at creation time)
ALTER TABLE ROOM
ADD CONSTRAINT  FOREIGN KEY (CLASS_ID) REFERENCES CLASS(CLASS_ID);

CREATE TABLE ENROLL (
    STUD_ID   INTEGER,
    CLASS_ID  INTEGER,
    GRADE     VARCHAR(3),
    CONSTRAINT  PRIMARY KEY (STUD_ID, CLASS_ID),
    CONSTRAINT FOREIGN KEY (STUD_ID)  REFERENCES STUDENT(STUD_ID),
    CONSTRAINT  FOREIGN KEY (CLASS_ID) REFERENCES CLASS(CLASS_ID)
);

























