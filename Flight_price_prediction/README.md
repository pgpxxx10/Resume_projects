# Data Science Flight price prediction.
## Project Overview:

* The goal for this project is to created a tool that predicts flight price with at least 95% accuracy.
* I used kaggle data for India market from 2019 ,csv file include more than 10k records. 
* Engineered features from the text Route and time data.
* Optimized Random Forest Regressors using RandomizedSearchCV to reach the best model.


## Code and Resources Used: 
**Python Version:** 3.8  
**Packages:** pandas, numpy, matplotlib, seaborn, sklearn,
**Models:** Linear Model, Logistic Regression, KNeighbor sRegressor, Decision Tree Regressor, Gradient Boosting Regressor, Random Forest Regressor

[Link to raw data](https://www.kaggle.com/anshigupta01/flight-price-prediction/data) 

## Data pre-processing:

After data reading from csv to data frame. I did quick check for null values and removed 1 line. 
* The data are incorporate information about airport source, destination together with route and flight timeliness:
1. Airline - Airline name
2. Date_of_Journey - Date in format dd/mm/yyy
3. Source - departure city
4. Destination - arrival city
5. Route - text format of the list of airports location that include in trip using IATA coding divided by arrow.
6. Dep_Time - time in format hh:mm
7. Arrival_Time - mix of format time including time with day and month hh:mm dd MMM or just time hh:mm
8. Duration -flight duration in text format representing hours and minutes or just minutes for short flights
9. Total_Stops - text format how many stops we have in Route 
10. Additional_Info - text format of additional information about ticket
11. Price - price in India rupees

Engineered features for model usage.
1. Dep_Time_H - departure hour in numeric format
2. Dep_Time_M- departure minute in numeric format
3. Arrival_Time_H - arrival hour in numeric format
4. Arrival_Time_M- arrival minute in numeric format
5. Journey_Day - journey day in numeric format
6. Journey_Month- journey month in numeric format
7. Total_Duration_in_min - sum of minutes for duration time
8. Route1 
9. Route2
10. Route3
11. Route4
12. Route5 - Column Route divided base on number of connection flight  with maximum 5 connections in IATA format




## Exploratory Data Analysis and Visualizations:
First I run simple statistic for numeric variables. The price is quite wide range from 1,7k to 79k rupees. 
* I draw price for better visibility. I noticed 9 very high outliers and removed them form data frame.
* I plot boxplot for airlines prices to check price distribution
* I draw distribution and boxplot for total duration in minutes.
* Next price plot include departure airport distributions.
* Last I plot heatmap for correlation for numeric variables.

## Handling categorical data
As sklearn models require all data to be numeric or vector values. I work on categorical data to transform tem to numeric values.

1. Nominal data are informative that needs to be changed to dummy variables.
2. Ordinal Data are for categories with an inherent order were retaining the order is important.
* I used One hot encoding method for nominal variables as follow Airline, Source, Destination, Additional_Info.
I used Label Encoding method for ordinal variables as follow for Route1, Route2, Route3, Route4, Route5:

## Feature Selection:
Preprocessing and Features Engineering delivered 42 columns. The orginal data have only 11. To avid probleem with high demontionalyty I will use Sklearn features extraction method Mutual info classifier to find dependent variables. 

## Model Building:

* First, I split the data into train and tests sets with a test size of 20%.
* As price prediction is regression problem I will try the below model from sklearn:
1. Linear Model
2. Logistic Regression
3. KNeighbors Regressor
4. Decision TreeRegressor
5. Gradient Boosting Regressor
6. Random Forest Regressor
The best model will be chosen and I will tune hyper parameters to reach the best model predictions.


## Best Model & Hyperparameter Tuning:

* The best results delivered by Random Forest Regressor were 98% for the training sample and 91% for test data. This is amazing results with simple model before hyperparameters toning
Second, the best model Radiant Boosting Regressor delivered 85% for the training sample and 84% for test data.
I used RandomizedSearchCV to search best hyperparameters : n_estimators, max_features, max_depth, min_samples_leaf.
* I plot distribution between actual value and predicted value.
* I draw a horizontal barplot for top 10 importances variables for best model.
* Finaly best model has been saved


