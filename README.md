Vehicle Theft Analysis in New Zealand
📌 Introduction

This project analyzes the incidence of vehicle thefts in New Zealand, focusing on the total number of thefts, most affected makes and models, influence of vehicle color, and temporal patterns. SQL was used to extract the data and Power BI was used to visualize key trends.

Database Structure
The analysis is based on three main tables:

1️⃣ stolen_vehicles → Records stolen vehicles (vehicle_id)
2️⃣ location → Contains the region where the theft occurred
3️⃣ make_details → Stores information about the make and model (make_id)

🔍 Analysis Questions
✔ Does the frequency of theft vary by region? → Identify the areas with the highest number of incidents
✔ What day of the week sees the most thefts? → Detect temporal patterns

📊 Visualizations in Power BI
✔ Theft map by region
✔ Distribution of stolen cars by color
✔ Comparison between luxury and standard vehicles
✔ Table of most stolen brands
✔ Date slicer to filter periods
✔ Q&A panel for dynamic questions

![DASHBOARD](https://github.com/user-attachments/assets/fad80e91-5adb-4149-82eb-e25934391a3c)

💡 Key Findings
✔ More standard cars were stolen → Possibly harder to steal luxury vehicles
✔ Older models and white-colored cars were most targeted
✔ Mondays had the highest theft rate → Beginning-of-week pattern

🛠 How to Run This Project
1️⃣ Download the dataset from Maven Analytics
2️⃣ Load the tables into MySQL to structure the database
3️⃣ Connect MySQL to Power BI using the official connector
4️⃣ Build the visualizations with maps, charts, and slicers


