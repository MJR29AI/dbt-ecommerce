Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test

DBT E-Commerce Analysist


INTRODUCTION
DATASET

This is a Brazilian ecommerce public dataset of orders made at Olist Store. The dataset has information of 100k orders from 2016 to 2018 made at multiple marketplaces in Brazil. Its features allows viewing an order from multiple dimensions: from order status, price, payment and freight performance to customer location, product attributes and finally reviews written by customers. 

The dataset have 7 table csv 


PURPOSE

1. Number of orders per Day, Week, Month
2. Active Customers: Customers with >=1 order within the period per Day, Week, Mont h
3. Average Order amount per user within the period
4. Weekly Customer Retention: Customers that ordered in the week that was already a
customer before.
5. Category Retention: Orders of an item in a category from users that already
purchased the same category from the previous order
6. Cross-Category Retention: Percentage of orders in a category that comes from users
who purchased in a different category on the previous order

HOW TO RUN APPLICATION

Registration Step:
1.Registration kaggle
2.Registration Google Cloud Platform
3.Registration DBT Cloud

Step
1.Download dataset e-commece in kaggle.com 
Link download:
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce/download?datasetVersionNumber=2 
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce 

2.Upload all data to big Query 
	a)Create database <name set> 
	b)Create table / upload all of data to BigQuery 	 
3.Fork repository github https://github.com/muhajir29/dbt-ecommerce 
4.Create credential json Google cloud platform
5.Create DBT project
	a)Login dbt cloud
	b)Choice a warehouse Big Query
	c)Configure your environment
	Upload service json from you big query, if you are done upload service.json the data can automatic fill by sistem. 
	d)Create database target or output and than test connection
	e)Set up repository
	Connect to your github, and choice the repository https://github.com/muhajir29/dbt-ecommerce
f)Your project is ready
6.Build DBT project
	In bottom, typing
	“ dbt run”
	And than 
	“dbt test” 
	If evertything already done 
	You can see output model in BigQuery
	
7.Create Jobs 
	And than 
	And fill 
	Checklist generate docs on run
	And create command like this
	And save
	Run now

8.View Documentation


