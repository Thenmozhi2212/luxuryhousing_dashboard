SELECT * FROM df

SELECT 
    "Project_Name",
    "Ticket_Price_Cr",
    "Unit_Size_Sqft",
    "Price_per_Sqft",
    ROUND( (("Ticket_Price_Cr" * 10000000.0) / "Unit_Size_Sqft")::numeric, 2 ) AS Expected_Price_per_Sqft
FROM df

SELECT 
    "Developer_Name",
    SUM("Ticket_Price_Cr") AS "Total_Revenue_Cr",
    COUNT(*) AS "Projects"
FROM df
GROUP BY "Developer_Name"
ORDER BY "Total_Revenue_Cr" DESC
LIMIT 5;



SELECT 
    MIN("Connectivity_Score") AS "Min_Connectivity",
    MAX("Connectivity_Score") AS "Max_Connectivity",
    MIN("Amenity_Score") AS "Min_Amenity",
    MAX("Amenity_Score") AS "Max_Amenity",
    MIN("Locality_Infra_Score") AS "Min_Infra",
    MAX("Locality_Infra_Score") AS "Max_Infra"
FROM df;



SELECT 
    "Developer_Name",
    SUM("Ticket_Price_Cr") AS total_revenue_cr,
    COUNT(*) AS total_projects
FROM df
GROUP BY "Developer_Name"
ORDER BY total_revenue_cr DESC;


