-- ============================================================
-- HR Employee Attrition Analysis
-- Database: EV_Projects | Table: HR_Attrition
-- Author: Jitender | Date: April 2026
-- ============================================================

-- Q1: Overall Attrition Rate
SELECT 
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Left_Company,
    ROUND(
        CAST(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100, 1
    ) AS Attrition_Rate_Pct
FROM HR_Attrition;

-- Q2: Attrition Rate by Department
SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Left_Company,
    ROUND(
        CAST(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100, 1
    ) AS Attrition_Rate_Pct
FROM HR_Attrition
GROUP BY Department
ORDER BY Attrition_Rate_Pct DESC;

-- Q3: Attrition Rate by Job Role
SELECT 
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Left_Company,
    ROUND(
        CAST(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100, 1
    ) AS Attrition_Rate_Pct
FROM HR_Attrition
GROUP BY JobRole
ORDER BY Attrition_Rate_Pct DESC;

-- Q4: Attrition Rate by Age Group
SELECT 
    AgeGroup,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Left_Company,
    ROUND(
        CAST(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100, 1
    ) AS Attrition_Rate_Pct
FROM HR_Attrition
GROUP BY AgeGroup
ORDER BY Attrition_Rate_Pct DESC;

-- Q5: Attrition Rate by Overtime
SELECT 
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Left_Company,
    ROUND(
        CAST(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100, 1
    ) AS Attrition_Rate_Pct
FROM HR_Attrition
GROUP BY OverTime
ORDER BY Attrition_Rate_Pct DESC;

-- Q6: Average Monthly Income by Attrition
SELECT 
    Attrition,
    ROUND(AVG(CAST(MonthlyIncome AS FLOAT)), 0) AS Avg_Monthly_Income
FROM HR_Attrition
GROUP BY Attrition
ORDER BY Avg_Monthly_Income DESC;
