# Data Science Coin Market Price Prediction  Model: Project Overview 
* Created model that predict cryptocurrency price for next day with accuracy around 95%(with some exceptions).
* I use my 6 favourite crypto-coins to build price visualization.
* I use yahoo API to download cryptocurrency price history and basic statistic.
* To help to understand each coin price position I created several visualization.
* Finally I used Keras Sequential model with a Long Short-Term Memory, Dense and Dropout layers to predict price for chosen cryptocurrency.
* Code in this notebook is mostly scalable, this aloud to analyse any of cryptocurrency or assets available on yahoo finance.



## Code and Resources Used 
**Python Version:** 3.8  
**Packages:** pandas, numpy, sklearn, matplotlib, seaborn, datetime, yfinance, yahoofinancials, keras, tensorflow

**For Yahoo Finance price history:** ```pip install yfinance``` More about Yfinance on "https://pypi.org/project/yfinance/"
**For Yahoo Financials statistic:**  ```pip install yahoofinancials``` More about Yahoo Financials "https://pypi.org/project/yahoofinancials/"


## Yahoo Financials statistic:
Yahoo provide dictionary that include lots of financial information for each coin. I collected the most important and created data frame
*	startDate - cryptocurrency start date posted on Yahoo finance
*	marketCap - all the coins that have been mined multiplying by current price
*	circulatingSupply - the total number of coins that are actively available for trade 
*	maxSupply - the best approximation of the maximum amount of coins that will ever exist in the lifetime of the cryptocurrency
*	volume - amount of cryptocurrency coins in transaction during last day
*	averageDailyVolume10Day - average of 10 days daily coins in transactions
*	averageVolume - 52 week average coins in transaction 
*	open - last open price 
*	fiftyTwoWeekHigh - best price in last 52 weeks
*	fiftyTwoWeekLow - worst price in last 52 weeks   

## Data pre-processing
After downloading price data from yahoo, I needed to add few columns to existing one:
* Date - date of historical data (depends of period chosen)
* Open - open price
* High - the highest price in this period
* Low - the lowest price in this period
* Close - close price
* Adj Close - close price with adjustments
* Volume - trading volume
* coin_ticker - cryptocurrency yahoo ticker

Additional columns to support visualizations are:
* Volume_in_Bln - volume transactions in billions
* daily_diff - price difference between open and close price
* daily_perc_diff - percentage price difference between open and close price

## EDA Visualizations
Apart of few tables showing collected and sorted price data. I created list of useful visualizations to understand price and volumes change in the past.
Plot daily close price.
Plot daily training volume.
Plot daily price volatility in percentage.
Add moving average for 20, 50, 200 days and plot the with closing price.
The subplot of similarity between coins for price close.
Heatmap for coins correlation matrix for price close
The subplot of similarity between coins for price volatility.
Heatmap for coins correlation matrix for price volatility.
Plot the full historical price for the chosen coin.
Final model price prediction plot.
Plot price prediction difference for last 80 days.

## Model Building
* I collected full price history for the coin to predict it price.
* Then close price are presented on plot. In next step I split data to training and testing data(80% to 20%). 
* I used 80 days prediction window to avoid overfitting. Then data has been scaled between value 0 and 1
* I created  Keras Sequential model with a Long Short-Term Memory, with 60 and 10 units split by Dropout leyer that randomly drop 20% noddles and Dense layer with price prediction
* Then model is fit to train data with  140 epochs with callback method on.
* In next step I monitor loss of model to receive best possible results in the shortes time. 
* I use model to predict test data and calculate price mean squared error. I plot predicted data together with training and testing data.
* Finally I used trained model to predict next day close price.

## Model performance

* The majority price prediction error are between +5% and -5% of actual price.
* There are some high outliers that missed price by 15% or 20%. This usually happened when marked changed trend very rapidly in different direction then last few trading days. 
* Cryptocurrency market is highly volatile. This notebook is not financial advice.

