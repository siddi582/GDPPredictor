# FORCASTING GDP USING ECONOMIC INDICATORS

## Overview:
The team has decided to create a predictive Machine Learning model to forecast nominal GDP (GDP current in USD). We used country data retrieved from the World Bank, spanning from 1961 to 2021. Variables impacting GDP, include, but are not limited to, macroeconomic and socio-economic variables, such as inflation, unemployment rate, urbanization rate, energy use and consumption, education levels and health expenditure. We performed ETL on a dataset of nearly 175,000 observations. Then we ran 2 machine learning models for developing and devoped countries. We visualized the data in Tableau. Finally, we were able to understand the most impactful factors to economic growth. To be added here: Main takeaways

## Tools:
Python for (ETL)
Jupyter notebook
Machine Learning
Tableau

## Model:
We tested the following models on our dataset:

1. Linear Regressor Model (with and without scaling)
2. Random Forest Regressor Model
3. Support Vector Regressor Model(with different Kernels)

## ETL:
* We read in the CSV file and drop unnecessary columns;
* We remove special unwanted characters that represented missing data, we replace them with naan values;
* We filter out country groups (Africa, Europe, etc.) and leave in the individual countries only;
* We drop the years that have more than 70% of data missing;
* We convert the data into float (as Python reads it as object);
* We fill in missing row values with row averages;
* We convert the data from wide to long format, with years as a single column and each variable as a column;
* We remove outliers using IQR;
* After performing ETL, we filtered countries into two categories (developed and developing) countries(based on gdp/per capita). We use the Investopedia definition of a developed country: A country with a GDP per capita over $12,000 is defined as developed. Countries with a GDP per capita less than $12K is defined as developping.
Will be running 2 machines learning models, predicting GDP over using socio-economic indicators(2019-2023);

## Machine Learning:


## Visualizations:
1. How GDP affected CPI
2. How all economic indicators responsed in developed and developing countries
3. Analyze pre-covid and post-covid years
4. Map ilustraton showing countries based on gdp per capita and inflation

## Results:
Based on data set (1961-2021) we will be presenting the following outcomes:
Linear regression models

## Summary:
A comparative and visually descriptive dataset comparing developing countries and their economies prior to the COVID-19 era and now. This dataset will utilize information gathered from WHO's website and include an ERD diagram and content produced using aspects of Machine-Learning, Tableau, Python, SQL, Jupyter notebook and Pandas libraries 

## Resources
- **Software:** Chrome Developer Tools, Jupyter Notebook, VS Code, and Tableau
(1) Module 7. Create Tables in SQL, https://courses.bootcampspot.com/courses/200/pages/7-dot-2-2-create-tables-in-sql?module_item_id=72739, Trilogy Education Services, 2000, Web 29 Jan 2023
