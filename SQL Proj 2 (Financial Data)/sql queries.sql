-- Create Credit_card table

create table credit_card(
	Client_Num int,
	Card_Category varchar(20),
	Annual_Fees int,
	Activation_30_Days int,
	Customer_Acq_Cost int,
	Week_Start_Date date,
	Week_Num varchar(20),
	Qtr varchar(10),
	current_year int,
	Credit_Limit decimal(10,2),
	Total_Revolving_Bal int,
	Total_Trans_Amt int,
	Total_Trans_Vol int,
	Avg_Utilization_Ratio decimal(10,3),
	Use_Chip varchar(10),
	Exp_Type varchar(50),
	Interest_Earned decimal(10,3),
	Delinquent_Acc int
)

-- Create cus_detail table

create table cus_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
)

-- Import data to cus_detail table file from csv file

copy cus_detail
from 'D:\Projects\SQL Proj 2 (Financial Data)\Credit_Card_Financial_Dashboard-main\customer.csv'
delimiter ','
csv header

-- Import data to credit_card table file from csv file

copy credit_card
from 'D:\Projects\SQL Proj 2 (Financial Data)\Credit_Card_Financial_Dashboard-main\credit_card.csv'
delimiter ','
csv header

-- Add additional data to cus_detail table from another csv file with recent data

copy cus_detail
from 'D:\Projects\SQL Proj 2 (Financial Data)\Credit_Card_Financial_Dashboard-main\customer.csv'
delimiter ','
csv header

-- Add additional data to credit_card table from another csv file with recent data

copy credit_card
from 'D:\Projects\SQL Proj 2 (Financial Data)\Credit_Card_Financial_Dashboard-main\credit_card.csv'
delimiter ','
csv header