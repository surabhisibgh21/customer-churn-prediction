Customer Churn Prediction
📌 Overview
This project analyzes customer data to understand and predict customer churn. It combines Python (EDA), SQL (analysis), and Power BI (dashboard) to extract insights and visualize customer behavior.
📁 Dataset
File: churn.csv
Contains customer details such as:
Demographics (Gender, SeniorCitizen)
Services (InternetService, PhoneService, Streaming)
Account info (Tenure, Contract)
Billing (MonthlyCharges, TotalCharges)
Target variable: Churn
🧠 Python Analysis
File: customer_churn_prediction.ipynb
Libraries used:
pandas
numpy
matplotlib
seaborn
Steps performed:
Data cleaning
Handling missing values
Data transformation
Exploratory Data Analysis (EDA)
Visualization of churn patterns
🗄️ SQL Analysis
File: churn_analysis.sql
Queries include:
Total customers and churn distribution
Churn percentage
Churn by contract type
Average monthly charges by churn
Churn by internet service
Tenure group analysis
📊 Power BI Dashboard
File: churn_dashboard1.pbix
Preview: churn_dashboard.png
Dashboard Highlights:
Total Customers: 7K
Churned Customers: 2K
Churn Rate: 26.54%
Visualizations:
Churn by Contract Type
Churn by Payment Method
Churn by Tenure
Customer Distribution
📈 Key Insights
Month-to-month contracts show higher churn
Customers with low tenure are more likely to churn
Electronic check users have higher churn rates
Higher monthly charges are linked with higher churn
🛠️ Technologies Used
Python (Pandas, NumPy, Matplotlib, Seaborn)
SQL
Power BI
📂 Project Structure

churn.csv
churn_analysis.sql
churn_dashboard.png
churn_dashboard1.pbix
customer_churn_prediction.ipynb
README.md
▶️ How to Run
Python

pip install pandas numpy matplotlib seaborn
Run the Jupyter Notebook.
SQL
Execute queries in any SQL environment.
Power BI
Open .pbix file in Power BI Desktop.
👩‍💻 Author
Surabhi Singh
