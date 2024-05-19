create database Hassan;
use Hassan;


CREATE TABLE User (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50),
    Email VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Height DECIMAL(5,2),
    Weight DECIMAL(5,2),
    SubscriptionStatus VARCHAR(20)
);


CREATE TABLE Activity (
    ActivityID INT PRIMARY KEY,
    UserID INT,
    ActivityType VARCHAR(50),
    Duration INT,
    Intensity VARCHAR(20),
    CaloriesBurned DECIMAL(8,2),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);


CREATE TABLE Exercise (
    ExerciseID INT PRIMARY KEY,
    ExerciseName VARCHAR(100),
    Description TEXT,
    EquipmentNeeded VARCHAR(100),
    DifficultyLevel VARCHAR(20)
);
alter table exercise modify Description varchar(40);
alter table exercise change ExerciseName En char(100);
alter table Exercise add column ep varchar (10);
alter table Exercise drop column ep ;
CREATE TABLE WorkoutPlan (
    PlanID INT PRIMARY KEY,
    UserID INT,
    PlanName VARCHAR(100),
    Description char,
    Duration INT,
    IntensityLevel VARCHAR(20),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

alter table WorkoutPlan change Description D_Description varchar(40);
CREATE TABLE Nutrition (
    NutritionID INT PRIMARY KEY,
    UserID INT,
    FoodName VARCHAR(100),
    Calories DECIMAL(8,2),
    Protein DECIMAL(8,2),
    Category VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);


CREATE TABLE Goal (
    GoalID INT PRIMARY KEY,
    UserID INT,
    GoalType VARCHAR(50),
    TargetValue DECIMAL(8,2),
    Deadline DATE,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);


CREATE TABLE Assistant (
    AssistantID INT PRIMARY KEY,
    Name VARCHAR(100),
    Description TEXT,
    Specialization VARCHAR(100),
    ContactInfo VARCHAR(100)
);

CREATE TABLE LogEntry (
    LogID INT PRIMARY KEY,
    UserID INT,
    ActivityID INT,
    ExerciseID INT,
    NutritionID INT,
    DateTime DATETIME,
    Notes TEXT,
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (ActivityID) REFERENCES Activity(ActivityID),
    FOREIGN KEY (ExerciseID) REFERENCES Exercise(ExerciseID),
    FOREIGN KEY (NutritionID) REFERENCES Nutrition(NutritionID)
);


INSERT INTO User (UserID, Username, Email, Age, Gender, Height, Weight, SubscriptionStatus)
VALUES 
    (1, 'Hassan', 'hjamshaid81@gmail.com', 20, 'Male', 175.5, 65.0, 'Active'),
    (2, 'Abdullah', 'Abdullah@gmail.com', 22, 'Male', 170.0, 80.0, 'Inactive');
select * from User;

INSERT INTO Activity (ActivityID, UserID, ActivityType, Duration, Intensity, CaloriesBurned)
VALUES 
    (1, 1, 'Running', 30, 'Moderate', 300),
    (2, 1, 'Weightlifting', 45, 'High', 400),
    (3, 2, 'Yoga', 60, 'Low', 200);
Select * from Activity;

INSERT INTO Exercise (ExerciseID, ExerciseName, Description, EquipmentNeeded, DifficultyLevel)
VALUES 
    (1, 'Push-up', 'Strengthens chest', 'None', 'Beginner'),
    (2, 'Running', 'Cardio exercise', 'Running shoes', 'Intermediate'),
    (3, 'Squats', 'Strengthens legs ', 'None', 'Intermediate');
select * from Exercise;

INSERT INTO WorkoutPlan (PlanID, UserID, PlanName, D_Description, Duration, IntensityLevel)
VALUES 
    (1, 1, 'Strength Training', 'Body strength workout', 60, 'High'),
    (2, 2, 'Yoga Routine', 'Relaxing yoga session', 45, 'Low');
select * from WorkoutPlan;

INSERT INTO LogEntry (LogID, UserID, ActivityID, ExerciseID, NutritionID, DateTime, Notes)
VALUES 
    (1, 1, 1, NULL, NULL, '2024-04-28 / 08:00:00', 'Morning run'),
    (2, 1, NULL, 1, NULL, '2024-04-28 / 10:00:00', 'Push up sets'),
    (3, 2, 3, NULL, NULL, '2024-04-28 / 12:00:00', 'Yoga class');
select * from LogEntry;

INSERT INTO Nutrition (NutritionID, UserID, FoodName, Calories, Protein, Category)
VALUES 
    (1, 1, 'Banana', 105, 1.3, 'Fruit'),
    (2, 1, 'Chicken ', 165, 31.0, 'Protein'),
    (3, 2, 'Salad', 100, 2.0, 'Vegetable');
select * from Nutrition;

INSERT INTO Goal (GoalID, UserID, GoalType, TargetValue, Deadline)
VALUES 
    (1, 1, 'Weight Loss', 70.0, '2024-12-31'),
    (2, 2, 'Muscle Gain', 60.0, '2024-12-31');
select * from Goal;

INSERT INTO Assistant (AssistantID, Name, Description, Specialization, ContactInfo)
VALUES 
    (1, 'Salman', 'Fitness coach', 'Strength training, Cardio', 'fitnessExpert@gmail.com'),
     (2, 'Mohid', 'Assitant coach', 'Running', 'Mohid@gmail.com');
select * from Assistant;    
    
  alter table User modify Gender char(20);
  alter table Assistant add column Phone_No varchar(20);
  alter table Assistant change ContactInfo Email varchar(30); 
  select * from Assistant;   
  
Insert into Assistant (AssistantID, Name, Description, Specialization, Email, Phone_No)
Values
(3, 'Talha', 'Fitness coach', 'Strength training, Cardio', 'fitnessExpert@gmail.com','03124384133'),
(4, 'Bismah', 'Assitant coach', 'Running', 'Bismah@gmail.com','03009966122');
   select * from Assistant;  

Rename Table Assistant to Trainer;
select * from Trainer;
   
show tables;
   
SELECT * FROM User
WHERE SubscriptionStatus = 'Active';

SELECT *FROM Activity
WHERE Duration > 30;

SELECT * FROM Activity
WHERE Duration > 30 AND Intensity = 'High';

SELECT * FROM User
WHERE SubscriptionStatus = 'Active' OR SubscriptionStatus = 'Inactive';

SELECT GoalID,TargetValue FROM Goal 
WHERE TargetValue='60' OR TargetValue='70';

SELECT * FROM Trainer 
WHERE Name='Bismah';

SELECT * FROM Nutrition
WHERE NutritionID IN (1, 2, 3);

SELECT ActivityID,ActivityType FROM Activity
WHERE ActivityType IN ('Running', 'Yoga');

SELECT * FROM LogEntry
WHERE LogID BETWEEN 1 AND 2;

SELECT * FROM Activity
WHERE Duration BETWEEN 30 AND 60;

SELECT * FROM WorkoutPlan 
WHERE Duration Between 40 AND 100;

SELECT DISTINCT ActivityType FROM Activity;

SELECT DISTINCT Username FROM User;

SELECT DISTINCT PlanID FROM WorkoutPlan;

SELECT DISTINCT ExerciseID FROM Exercise;

SELECT * FROM User WHERE Age = 20;
SELECT * FROM User WHERE Age <> 30;
SELECT * FROM User WHERE Height < 160;
SELECT * FROM Activity WHERE Duration > 45;
SELECT * FROM Activity WHERE Duration >= 60;
SELECT * FROM Activity WHERE Duration <= 30;

UPDATE User Set SubscriptionStatus = 'Inactive' WHERE UserID = 1;
UPDATE Activity Set Duration = 45 WHERE ActivityID = 1;
UPDATE Exercise Set DifficultyLevel = 'Advanced' WHERE ExerciseID = 1;
UPDATE WorkoutPlan Set IntensityLevel = 'Medium' WHERE PlanID = 1;
UPDATE LogEntry Set Notes = 'Completed additional sets' WHERE LogID = 2;
UPDATE Nutrition Set Calories = 120 WHERE NutritionID = 1;
UPDATE Goal Set TargetValue = 65 WHERE GoalID = 1;


DELETE FROM Nutrition WHERE FoodName='Banana';
DELETE FROM User WHERE UserID = 3;
DELETE FROM Activity WHERE ActivityID = 2;
DELETE FROM Exercise WHERE ExerciseID = 2;
DELETE FROM WorkoutPlan WHERE PlanID = 2;
DELETE FROM LogEntry WHERE LogID = 1;
DELETE FROM Nutrition WHERE NutritionID = 3;
DELETE FROM Goal WHERE GoalID = 1;



SELECT * FROM User CROSS JOIN Exercise;
SELECT * FROM Activity CROSS JOIN Nutrition;

SELECT User.Username, Activity.ActivityType, Activity.Duration
FROM User INNER JOIN Activity ON User.UserID = Activity.UserID;

SELECT User.Username, Goal.GoalType, Goal.TargetValue, Goal.Deadline
FROM User INNER JOIN Goal ON User.UserID = Goal.UserID;

SELECT Exercise.ExerciseName, LogEntry.DateTime, LogEntry.Notes
FROM Exercise INNER JOIN LogEntry ON Exercise.ExerciseID = LogEntry.ExerciseID;

Select * from User;
Select * from Exercise;
select * from Nutrition;
select * from Activity;
select* from LogEntry;
select* from Trainer;
Select * from WorkoutPlan;
Select * from Goal;

select * from trainer where name like 'B%';
update trainer set name='Areeba' where name='Bismah';
select * from trainer;

delete from trainer where AssistantID=1;
delete from trainer where name='Mohid';
select * from trainer ;

select* from trainer where AssistantID>=4;
update trainer set Email='Areeba@gmail.com' where name ='Areeba';
select * from trainer;
select* from Goal;
select* from User;
select Goal.GoalID from User  cross join Goal ;
