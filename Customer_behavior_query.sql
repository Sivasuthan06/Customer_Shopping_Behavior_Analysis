SELECT * FROM customer LIMIT 10;

--Which Age Group contributes the most to total purchase revenue?
SELECT "Age_Group",
       SUM("Purchase_Amount") AS Total_Purchase
FROM customer
GROUP BY "Age_Group"
ORDER BY Total_Purchase DESC;

---What is the average purchase frequency by Gender?

SELECT "Gender", 
       AVG("Purchase_Frequency_Days") AS Avg_Frequency 
FROM customer 
GROUP BY "Gender";

---Who are the high-value customers?

SELECT "Customer_ID", "Purchase_Amount" * "Purchase_Frequency_Days" AS Value_Score 
FROM customer 
ORDER BY Value_Score DESC LIMIT 10;


--Which Category generates the most revenue?
SELECT "Category", 
SUM("Purchase_Amount") AS Total_Revenue 
FROM customer 
GROUP BY "Category" ORDER BY Total_Revenue DESC;


--Are there seasonal trends in purchases?
SELECT "Season", 
SUM("Purchase_Amount") AS Total_Revenue 
FROM customer 
GROUP BY "Season" ORDER BY Total_Revenue DESC;


--Which Size is most popular?
SELECT "Size", 
COUNT(*) AS Count_Items 
FROM customer 
GROUP BY "Size" ORDER BY Count_Items DESC;

--Does Discount Applied affect purchase frequency?
SELECT "Discount_Applied", 
AVG("Purchase_Frequency_Days") AS Avg_Frequency 
FROM customer GROUP BY "Discount_Applied";

--Which Payment Method leads to higher purchase amounts?
SELECT "Payment_Method", 
AVG("Purchase_Amount") AS Avg_Amount 
FROM customer 
GROUP BY "Payment_Method" ORDER BY Avg_Amount DESC;

--Does Review Rating correlate with repeat purchases?
SELECT "Review_Rating", 
       AVG("Previous_Purchases") AS Avg_Previous 
       FROM customer GROUP BY "Review_Rating" ORDER BY "Review_Rating" DESC;

--Does Subscription Status affect purchases?
SELECT "Subscription_Status", 
       AVG("Purchase_Amount") AS Avg_Amount, 
       AVG("Purchase_Frequency_Days") AS Avg_Frequency 
       FROM customer GROUP BY "Subscription_Status";
