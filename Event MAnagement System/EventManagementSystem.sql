create database phase3;
use phase3;

create table Event( 
EventId int primary key ,
EventName Char (20) ,
Description Char (100), 
StartDate  Varchar(10),  
EndDate Varchar(10),
OrganizerID   int
); 
create table Location ( 
LocationID  int primary key,
VenueName  Char (20) ,
City   Char(20),  
State  Char(20), 
Capacity  Int,
EventId int
); 
create table Organizer  ( 
OrganizerID   int primary key,
FirstName   Char (20) ,
LastName   Char (20), 
CompanyName   Char(30)  
); 
create table OrganizerPhonenum  ( 
Organizerphonenum1   varchar(20),
Organizerphonenum2   varchar(20),
OrganizerID   int
); 
create table OrganizerEmail  ( 
OrganizerEmail1   varchar(30),
OrganizerEmail2   varchar(30),
OrganizerID   int
); 
create table EventType   ( 
EventType    Char(20) primary key ,
EventTypeName    Char (20) ,
Description    Char (40),
EventId int 
); 
create table Attendee   ( 
AttendeeID     int primary key,
FirstName   Char (20) ,
LastName   Char (20),  
FeedbackID    int(20)
); 
create table Attendee_Phonenum  ( 
PrimaryNum varchar(30),
SecondaryNum  varchar(30),
AttendeeID     int 
); 
create table Event_Attendee   ( 
AttendeeID     int ,
EventId int 
); 
create table Ticket    ( 
TicketID      int  primary key,
TicketType    Char (20) ,
PurchaseDate   Varchar(10), 
Price    int(20),
EventId int,
LocationID  int ,
AttendeeID     int
); 
create table Sponsor    ( 
SponsorID      int primary key,
SponsorName    Char (20) ,
ContactPerson    Char (20), 
Email    Varchar(20),  
ContactNumber    varchar(30)
); 
create table Event_Sponsors    ( 
EventId int ,
SponsorID      int 
); 
create table Speaker    ( 
SpeakerID      int primary key,
SpeakerName char(10),
ContactPerson   varchar(20)
); 
create table Speaker_Email   ( 
Email1 varchar(50),
Email2 varchar(50),
SpeakerID      int 
); 
create table Event_Speaker    ( 
EventId int ,
SpeakerID      int
); 
create table Task     ( 
TaskID       int primary key,
Description    varchar(30) ,
Status    Char (20), 
OrganizerID   int
); 
create table Feedback     ( 
FeedbackID       int primary key,
Rating    int,
Comments    varchar(50),  
SpeakerID      int
);

INSERT INTO Event (EventId, EventName, Description, StartDate, EndDate, OrganizerID) 
VALUES 
(1, 'Music Festival', 'Annual music festival featuring various artists.', '2024-07-15', '2024-07-17', 101),
(2, 'Art Exhibition', 'Contemporary art exhibition showcasing local artists.', '2024-08-20', '2024-08-25', 102),
(3, 'Tech Conference', 'A conference focusing on the latest trends in technology.', '2024-09-10', '2024-09-12',  103),
(4, 'Food Fair', 'Local food vendors showcasing their delicacies.', '2024-10-05', '2024-10-07', 104),
(5, 'Film Festival', 'Celebration of independent films from around the world.', '2024-11-15', '2024-11-20', 105),
(6, 'Startup Meetup', 'Networking event for startups and investors.', '2024-06-22', '2024-06-23', 106),
(7, 'Book Fair', 'Annual fair with book stalls, author signings, and readings.', '2024-07-25', '2024-07-27', 107),
(8, 'Marathon', 'City-wide marathon for charity.', '2024-09-01', '2024-09-01', 108),
(9, 'Science Fair', 'Exhibition of scientific projects by students.', '2024-10-15', '2024-10-18', 109),
(10, 'Yoga Retreat', 'A weekend retreat focused on yoga and wellness.', '2024-11-05', '2024-11-07', 110);

INSERT INTO Location (LocationID, VenueName, City, State, Capacity, EventId) 
VALUES 
(11, 'Concert Hall', 'New York', 'NY', 1000, 1),
(12, 'Art Gallery', 'Los Angeles', 'CA', 500, 2),
(13, 'Conference Center', 'San Francisco', 'CA', 800, 3),
(14, 'Fairgrounds', 'Chicago', 'IL', 1200, 4),
(15, 'Cinema Complex', 'Seattle', 'WA', 300, 5),
(16, 'Tech Hub', 'Austin', 'TX', 600, 6),
(17, 'Convention Center', 'Denver', 'CO', 1500, 7),
(18, 'Sports Arena', 'Miami', 'FL', 2000, 8),
(19, 'University Hall', 'Boston', 'MA', 700, 9),
(20, 'Retreat Center', 'Sedona', 'AZ', 250, 10);

INSERT INTO Organizer (OrganizerID, FirstName, LastName, CompanyName) 
VALUES 
(101, 'John', 'Doe',  'Event Co.'),
(102, 'Jane', 'Smith',  'Event Organizers Inc.'),
(103, 'Michael', 'Johnson',  'Event Producers Ltd.'),
(104, 'Emily', 'Brown', 'Event Planners LLC'),
(105, 'David', 'Wilson',  'Events R Us'),
(106, 'Sarah', 'Taylor', 'Startup Events Ltd.'),
(107, 'Christopher', 'Anderson', 'Book Fairs Inc.'),
(108, 'Jessica', 'Martinez', 'Charity Runs LLC'),
(109, 'Brian', 'Lee', 'Science Exhibits Co.'),
(110, 'Laura', 'Garcia', 'Wellness Retreats Inc.');

INSERT INTO OrganizerPhonenum (Organizerphonenum1, Organizerphonenum2, OrganizerID) 
VALUES 
(9234567890, 9209876543, 101),
(9234567891, 9298765432, 102),
(9245678901, 9218765432, 103),
(9234567892, 9298765432, 104),
(9234567893, 9298765432, 105),
(9234567894, 9298765434, 106),
(9234567895, 9298765435, 107),
(9234567896, 9298765436, 108),
(9234567897, 9298765437, 109),
(9234567898, 9298765438, 110);

INSERT INTO OrganizerEmail (OrganizerEmail1, OrganizerEmail2, OrganizerID) 
VALUES 
('john@gmail.com', 'john.doe@gmail.com', 101),
('jane@gmail.com', 'jane.smith@gmail.com', 102),
('michael@gmail.com', 'michael.johnson@gmail.com', 103),
('emily@gmail.com', 'emily.brown@gmail.com', 104),
('david@gmail.com', 'david.wilson@gmail.com', 105),
('sarah.taylor@gmail.com', 'sarah@startupevents.com', 106),
('chris.anderson@gmail.com', 'c.anderson@bookfairs.com', 107),
('jessica.martinez@gmail.com', 'jessica@charityruns.com', 108),
('brian.lee@gmail.com', 'brian@scienceexhibits.com', 109),
('laura.garcia@gmail.com', 'laura@wellnessretreats.com', 110);

INSERT INTO EventType (EventType, EventTypeName, Description, EventId) 
VALUES 
('Song', 'Concert', 'Live music performance', 1),
('Art', 'Exhibition', 'Visual art display', 2),
('Tech', 'Conference', 'Technology seminar', 3),
('Food', 'Fair', 'Food vendors', 4),
('Movies', 'Festival', 'Movie screenings', 5),
('Networking', 'Meetup', 'Startup networking event', 6),
('Literature', 'Book Fair', 'Book stalls and author signings', 7),
('Sports', 'Marathon', 'Charity running event', 8),
('Science', 'Science Fair', 'Student science projects exhibition', 9),
('Wellness', 'Yoga Retreat', 'Yoga and wellness activities', 10);

INSERT INTO Attendee (AttendeeID, FirstName, LastName, FeedbackID) 
VALUES 
(201, 'John', 'Doe', 301),
(202, 'Jane', 'Smith', 302),
(203, 'Michael', 'Johnson', 303),
(204, 'Emily', 'Brown', 304),
(205, 'David', 'Wilson', 305),
(206, 'Sarah', 'Taylor', 306),
(207, 'Christopher', 'Anderson', 307),
(208, 'Jessica', 'Martinez', 308),
(209, 'Brian', 'Lee', 309),
(210, 'Laura', 'Garcia', 310);

INSERT INTO Attendee_Phonenum (PrimaryNum, SecondaryNum, AttendeeID) 
VALUES 
(1234567890, 9876543210, 201),
(2345678901, 8765432109, 202),
(3456789012, 7654321098, 203),
(4567890123, 6543210987, 204),
(5678901234, 5432109876, 205),
(6789012345, 4321098765, 206),
(7890123456, 3210987654, 207),
(8901234567, 2109876543, 208),
(9012345678, 1098765432, 209),
(9123456789, 1987654321, 210);


INSERT INTO Event_Attendee (AttendeeID, EventId) 
VALUES 
(201, 1),
(202, 2),
(203, 3),
(204, 4),
(205, 5),
(206, 6),
(207, 7),
(208, 8),
(209, 9),
(210, 10);

INSERT INTO Ticket (TicketID, TicketType, PurchaseDate, Price, EventId, LocationID, AttendeeID) 
VALUES 
(10001, 'General Admission', '2024-06-01', 50, 1, 11, 201),
(10002, 'VIP Pass', '2024-06-02', 100, 2, 12, 202),
(10003, 'Student Discount', '2024-06-03', 30, 3, 13, 203),
(10004, 'Family Package', '2024-06-04', 120, 4, 14, 204),
(10005, 'Early Bird', '2024-06-05', 40, 5, 15, 205),
(10006, 'Weekend Pass', '2024-06-06', 80, 6, 16, 206),
(10007, 'One-Day Pass', '2024-06-07', 60, 7, 17, 207),
(10008, 'Charity Entry', '2024-06-08', 20, 8, 18, 208),
(10009, 'Student Pass', '2024-06-09', 25, 9, 19, 209),
(10010, 'Early Registration', '2024-06-10', 35, 10, 20, 210);

INSERT INTO Sponsor (SponsorID, SponsorName, ContactPerson, Email, ContactNumber) 
VALUES 
(1001, 'ABC Corp', 'John Smith', 'john@example.com', 1234567890),
(1002, 'XYZ Corp', 'Jane Doe', 'jane@example.com', 2345678901),
(1003, 'PQR Corp', 'Michael Johnson', 'michael@example.com', 3456789012),
(1004, 'LMN Corp', 'Emily Brown', 'emily@example.com', 4567890123),
(1005, 'EFG Corp', 'David Wilson', 'david@example.com', 5678901234),
(1006, 'QRS Corp', 'Sarah Taylor', 'sarah@example.com', 6789012345),
(1007, 'TUV Corp', 'Christopher Anderson', 'chris@example.com', 7890123456),
(1008, 'WXY Corp', 'Jessica Martinez', 'jessica@example.com', 8901234567),
(1009, 'BCD Corp', 'Brian Lee', 'brian@example.com', 9012345678),
(1010, 'FGH Corp', 'Laura Garcia', 'laura@example.com', 9123456789);

INSERT INTO Event_Sponsors (EventId, SponsorID) 
VALUES 
(1, 1001),
(2, 1002),
(3, 1003),
(4, 1004),
(5, 1005),
(6, 1006),
(7, 1007),
(8, 1008),
(9, 1009),
(10, 1010);


INSERT INTO Speaker (SpeakerID, SpeakerName, ContactPerson) 
VALUES 
(2001, 'Speaker1', 1234567890),
(2002, 'Speaker2', 2345678901),
(2003, 'Speaker3', 3456789012),
(2004, 'Speaker4', 4567890123),
(2005, 'Speaker5', 5678901234),
(2006, 'Speaker6', '6789012345'),
(2007, 'Speaker7', '7890123456'),
(2008, 'Speaker8', '8901234567'),
(2009, 'Speaker9', '9012345678'),
(2010, 'Speaker10', '9123456789');

INSERT INTO Speaker_Email (Email1, Email2, SpeakerID) 
VALUES 
('speaker1@example.com', 'speaker1.secondary@example.com', 2001),
('speaker2@example.com', 'speaker2.secondary@example.com', 2002),
('speaker3@example.com', 'speaker3.secondary@example.com', 2003),
('speaker4@example.com', 'speaker4.secondary@example.com', 2004),
('speaker5@example.com', 'speaker5.secondary@example.com', 2005),
('speaker6@example.com', 'speaker6.secondary@example.com', 2006),
('speaker7@example.com', 'speaker7.secondary@example.com', 2007),
('speaker8@example.com', 'speaker8.secondary@example.com', 2008),
('speaker9@example.com', 'speaker9.secondary@example.com', 2009),
('speaker10@example.com', 'speaker10.secondary@example.com', 2010);

INSERT INTO Event_Speaker (EventId, SpeakerID) 
VALUES 
(1, 2001),
(2, 2002),
(3, 2003),
(4, 2004),
(5, 2005),
(6, 2006),
(7, 2007),
(8, 2008),
(9, 2009),
(10, 2010);

INSERT INTO Task (TaskID, Description, Status, OrganizerID) 
VALUES 
(3001, 'Prepare Event Schedule', 'Pending', 101),
(3002, 'Arrange Catering', 'In Progress', 102),
(3003, 'Send Invitations', 'Completed', 103),
(3004, 'Coordinate with Venue', 'Pending', 104),
(3005, 'Arrange Transportation', 'In Progress', 105),
(3006, 'Setup Audio-Visual Equipment', 'Pending', 106),
(3007, 'Finalize Seating Arrangements', 'In Progress', 107),
(3008, 'Print Event Materials', 'Completed', 108),
(3009, 'Coordinate Volunteer Staff', 'Pending', 109),
(3010, 'Prepare Welcome Speech', 'In Progress', 110);

INSERT INTO Feedback (FeedbackID, Rating, Comments, SpeakerID) 
VALUES 
(301, 5, 'Great speaker!', 2001),
(302, 4, 'Informative session.', 2002),
(303, 3, 'Average presentation.', 2003),
(304, 2, 'Could have been better.', 2004),
(305, 1, 'Disappointing talk.', 2005),
(306, 5, 'Very engaging and knowledgeable speaker.', 2006),
(307, 4, 'Enjoyed the presentation.', 2007),
(308, 3, 'Needs improvement in delivery.', 2008),
(309, 2, 'Lacked depth in content.', 2009),
(310, 1, 'Poor communication skills.', 2010);

alter table Event add foreign key (OrganizerID) references Organizer (OrganizerID);
alter table Location add foreign key (EventId) references Event (EventId);
alter table OrganizerPhonenum add foreign key (OrganizerID) references Organizer (OrganizerID);
alter table OrganizerEmail add foreign key (OrganizerID) references Organizer (OrganizerID);
alter table EventType add foreign key (EventId) references Event (EventId);
alter table Attendee add foreign key (FeedbackID) references Feedback (FeedbackID);
alter table Attendee_Phonenum add foreign key (AttendeeID) references Attendee (AttendeeID);
alter table Event_Attendee add foreign key (AttendeeID) references Attendee (AttendeeID);
alter table Event_Attendee add foreign key (EventId) references Event (EventId);
alter table Ticket add foreign key (EventId) references Event (EventId);
alter table Ticket add foreign key (LocationID) references Location (LocationID);
alter table Ticket add foreign key (AttendeeID) references Attendee (AttendeeID);
alter table Event_Sponsors add foreign key (EventId) references Event (EventId);
alter table Event_Sponsors add foreign key (SponsorID) references Sponsor (SponsorID);
alter table Event_Speaker add foreign key (EventId) references Event (EventId);
alter table Event_Speaker add foreign key (SpeakerId) references Speaker (SpeakerId);
alter table Task add foreign key  (OrganizerID) references Organizer (OrganizerID);
alter table Feedback add foreign key  (SpeakerID) references Speaker (SpeakerID);


update Event set EventName= 'Taakra 2024' where EventId=4;
update Location set City= 'Lahore' where LocationID=10;
update Organizer set FirstName= 'Donald' where OrganizerID=101;
update Attendee set FirstName= 'Trump' where AttendeeID=201;
update Ticket set Price= 1000 where TicketID=10001;
update Sponsor set ContactPerson= 'ABCD' where SponsorID=1001;
update Speaker set ContactPerson= 9876543210 where SpeakerID=2001;
update Task set Status= 'Completed' where TaskID=3001;
update Feedback set RAting= 5 where FeedbackID=305;


select * from Event where EventName like "%k%";
select * from Location where City like "%L%";
select * from Organizer where LastName like "%S%";
select * from Attendee where FirstName like "T%";
select * from Ticket where TicketType like "V%";
select * from Sponsor where SponsorName like "%A__%";
select * from Speaker where SpeakerName like "%3";
select * from Task where Description like "%P____E%";
select * from Feedback where Comments like "%n_";

SELECT * FROM Event WHERE EventId BETWEEN 1 AND 5;
SELECT * FROM Location WHERE LocationID BETWEEN 11 AND 15;
SELECT * FROM Organizer WHERE OrganizerID BETWEEN 101 AND 105;
SELECT * FROM OrganizerPhonenum WHERE OrganizerID BETWEEN 101 AND 105;
SELECT * FROM OrganizerEmail WHERE OrganizerID BETWEEN 101 AND 105;
SELECT * FROM EventType WHERE EventId BETWEEN 1 AND 5;
SELECT * FROM Attendee WHERE AttendeeID BETWEEN 201 AND 205;
SELECT * FROM Feedback WHERE FeedbackID BETWEEN 301 AND 305;
SELECT * FROM Task WHERE TaskID BETWEEN 3001 AND 3005;


SELECT * FROM Event WHERE EventId > 5;
SELECT * FROM Location WHERE LocationID > 15;
SELECT * FROM Organizer WHERE OrganizerID > 105;
SELECT * FROM OrganizerPhonenum WHERE OrganizerID > 105;
SELECT * FROM OrganizerEmail WHERE OrganizerID > 105;
SELECT * FROM EventType WHERE EventId > 5;
SELECT * FROM Attendee WHERE AttendeeID > 205;
SELECT * FROM Feedback WHERE FeedbackID > 305;
SELECT * FROM Task WHERE TaskID > 3005;


SELECT * FROM Event WHERE EventId < 6;
SELECT * FROM Location WHERE LocationID < 16;
SELECT * FROM Organizer WHERE OrganizerID < 106;
SELECT * FROM OrganizerPhonenum WHERE OrganizerID < 106;
SELECT * FROM OrganizerEmail WHERE OrganizerID < 106;
SELECT * FROM EventType WHERE EventId < 6;
SELECT * FROM Attendee WHERE AttendeeID < 206;
SELECT * FROM Feedback WHERE FeedbackID < 306;
SELECT * FROM Task WHERE TaskID < 3006;


SELECT * FROM Event WHERE EventId >= 5;
SELECT * FROM Location WHERE LocationID >= 15;
SELECT * FROM Organizer WHERE OrganizerID >= 105;
SELECT * FROM OrganizerPhonenum WHERE OrganizerID >= 105;
SELECT * FROM OrganizerEmail WHERE OrganizerID >= 105;
SELECT * FROM EventType WHERE EventId >= 5;
SELECT * FROM Attendee WHERE AttendeeID >= 205;
SELECT * FROM Feedback WHERE FeedbackID >= 305;
SELECT * FROM Task WHERE TaskID >= 3005;


SELECT * FROM Event WHERE EventId <= 6;
SELECT * FROM Organizer WHERE OrganizerID <= 106;
SELECT * FROM OrganizerPhonenum WHERE OrganizerID <= 106;
SELECT * FROM OrganizerEmail WHERE OrganizerID <= 106;
SELECT * FROM EventType WHERE EventId <= 6;
SELECT * FROM Attendee WHERE AttendeeID <= 206;
SELECT * FROM Feedback WHERE FeedbackID <= 306;
SELECT * FROM Task WHERE TaskID <= 3006;


SELECT * FROM Event WHERE EventId <> 1;
SELECT * FROM Location WHERE LocationID <> 15;
SELECT * FROM Organizer WHERE OrganizerID <> 105;
SELECT * FROM OrganizerPhonenum WHERE OrganizerID <> 105;
SELECT * FROM OrganizerEmail WHERE OrganizerID <> 105;
SELECT * FROM EventType WHERE EventId <> 5;
SELECT * FROM Attendee WHERE AttendeeID <> 205;
SELECT * FROM Feedback WHERE FeedbackID <> 305;
SELECT * FROM Task WHERE TaskID <> 3005;
SELECT * FROM Task WHERE OrganizerID <> 105;