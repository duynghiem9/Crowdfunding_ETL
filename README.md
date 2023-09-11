# Crowdfunding_ETL

## Part 1: Create the Category and Subcategory DataFrames

	- Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
	
		- A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
		
		- A "category" column that contains only the category titles
		
		- The following image shows this category DataFrame:
	
	- Export the category DataFrame as category.csv and save it to your GitHub repository.
	
	- Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
	
		- A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
		
		- A "subcategory" column that contains only the subcategory titles
	
	- Export the subcategory DataFrame as subcategory.csv and save it to your GitHub repository.

## Part 2: Create the Campaign DataFrame

	- Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

		- The "cf_id" column

		- The "contact_id" column

		- The "company_name" column

		- The "blurb" column, renamed to "description"

		- The "goal" column, converted to the float data type

		- The "pledged" column, converted to the float data type

		- The "outcome" column

		- The "backers_count" column

		- The "country" column

		- The "currency" column

		- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format

		- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

		- The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

		- The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

	- Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.
	
## Part 3: Create the Contacts DataFrame

	- Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:
	
		- Option 1: Use Python dictionary methods.
	
	If you chose Option 1, complete the following steps:
	
		- Import the contacts.xlsx file into a DataFrame.
		
		- Iterate through the DataFrame, converting each row to a dictionary.
		
		- Iterate through each dictionary, doing the following: 
		
			- Extract the dictionary values from the keys by using a Python list comprehension.
			
			- Add the values for each row to a new list.
		
		- Create a new DataFrame that contains the extracted data.
		
		- Split each "name" column value into a first and last name, and place each in a new column.
		
		- Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
		
## Part 4: Create the Crowdfunding Database:

	- Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBD.
	
	- Use the information from the ERD to create a table schema for each CSV file.
	
		- Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
		
	- Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
	
	- Create a new Postgres database, named crowdfunding_db.
	
	- Using the database schema, create the tables in the correct order to handle the foreign keys.
	
	- Verify the table creation by running a SELECT statement for each table.
	
	- Import each CSV file into its corresponding SQL table.
	
	- Verify that each table has the correct data by running a SELECT statement for each.
	
## Resources:

https://www.epochconverter.com/

https://pandas.pydata.org/docs/reference/api/pandas.to_datetime.html

https://www.programiz.com/python-programming/datetime/strftime

https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/JSON

https://www.w3schools.com/python/python_json.asp

https://www.w3schools.com/python/ref_dictionary_items.asp

https://docs.python.org/3/library/json.html

https://pandas.pydata.org/docs/reference/api/pandas.read_excel.html

https://datatofish.com/dictionary-values-as-list/

https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.drop.html

https://pandas.pydata.org/docs/reference/api/pandas.Series.str.split.html

https://stackoverflow.com/questions/13148429/how-to-change-the-order-of-dataframe-columns

https://www.geeksforgeeks.org/python-pandas-series-str-extract/#

https://www.dofactory.com/sql/float

https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.merge.html

https://www.mytecbits.com/internet/python/convert-date-to-mm-dd-yyyy

https://www.geeksforgeeks.org/json-loads-in-python/

https://pandas.pydata.org/docs/reference/api/pandas.Series.str.split.html

https://pandas.pydata.org/docs/reference/api/pandas.DataFrame.iterrows.html

https://pandas.pydata.org/docs/reference/api/pandas.read_csv.html