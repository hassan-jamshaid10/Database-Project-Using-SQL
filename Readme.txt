# Fitness Tracking System SQL Project

## Overview
This project is a comprehensive **Fitness Tracking System** implemented in **SQL**. The system manages fitness-related data using a structured approach with various tables. It utilizes advanced SQL concepts, including joins, views, procedures, and both Data Definition Language (DDL) and Data Manipulation Language (DML) commands.

## Database Structure
The database consists of the following tables:

- **User**: Stores user information.
  - Fields: `UserID`, `Username`, `Email`, `Age`, `Gender`, `Height`, `Weight`, `SubscriptionStatus`

- **Activity**: Logs user activities.
  - Fields: `ActivityID`, `UserID`, `ActivityType`, `Duration`, `Intensity`, `CaloriesBurned`

- **Exercise**: Contains details about different exercises.
  - Fields: `ExerciseID`, `ExerciseName`, `Description`, `EquipmentNeeded`, `DifficultyLevel`

- **WorkoutPlan**: Manages user workout plans.
  - Fields: `PlanID`, `UserID`, `PlanName`, `D_Description`, `Duration`, `IntensityLevel`

- **Nutrition**: Tracks user nutrition intake.
  - Fields: `NutritionID`, `UserID`, `FoodName`, `Calories`, `Protein`, `Category`

- **Goal**: Sets user fitness goals.
  - Fields: `GoalID`, `UserID`, `GoalType`, `TargetValue`, `Deadline`

- **Assistant**: Provides information about fitness assistants or trainers.
  - Fields: `AssistantID`, `Name`, `Description`, `Specialization`, `ContactInfo`

## Features
- **Data Manipulation**: Execute DML commands to insert, update, and delete records in the database.
- **Joins**: Utilize various join functions to combine data from multiple tables.
- **Views**: Create views for simplified access to frequently queried data.
- **Stored Procedures**: Implement procedures for encapsulated logic and reusability.
- **DDL Commands**: Define the database structure using DDL commands.

## Entity-Relationship Diagram (ERD)
![ERD Diagram](path/to/erd-diagram.png)  
*Add your ERD diagram here.*

## Schema
- The schema includes all tables and relationships defined in the database, providing a visual representation of the data structure.

## Getting Started
1. **Clone the Repository**:
    ```bash
    git clone https://github.com/yourusername/fitness-tracking-sql.git
    cd fitness-tracking-sql
    ```

2. **Set Up MySQL**: Ensure you have a MySQL server running and create a database for this project.

3. **Import Database Schema**: Use the provided SQL scripts to create the necessary tables and relationships in your MySQL database.

4. **Execute Procedures and Queries**: Run the included SQL procedures and queries to manipulate and retrieve data.

## Contact
For questions or suggestions, feel free to reach out to me at:
- Email: hjamshaid81@gmail.com
