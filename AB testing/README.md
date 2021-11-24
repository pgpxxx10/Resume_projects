# Data Science Smart Add A/B - testing.
## Project Overview:
The project focus on pulled data from an ad agency. Agency tracked website visitors that were served two different type of ads to check if there is a difference reaction to new ad. We have two group of visitors those one that has been exposed to new ad and those that did not saw new ad as our control group.  
* This project goal is to determine that new ad for exposed users is more effective in driving customers to click a button to register with personal information than the control group. 
* After examining hypothesis good practice is to prepare business recommendation. 
* The results are showing 74% probability that exposed users have strong reaction for new ad design.


**Project hypothesis:**
1. **Hypothesis Hₒ: p = pₒ** "There is no significant difference between the ad success rate of both groups"
2. **Alternative Hypothesis Hₐ: p ≠ pₒ** "There is significant difference between the ad success rate of both groups"
Confidence Level: (p=0.05)

Columns Description:
* auction_id: the unique id of the on-line user.
* experiment: users group to control or exposed.
* control: users who have been shown a control ad
* exposed: users who have been shown a creative new ad.
* date: the date in YYYY-MM-DD format
* hour: the hour of the day in HH format.
* device_make: the name device
* platform_os : the id of the OS the user has
* browser: the name of the browser that user used
* yes: 1 if the user chooses the “Yes” radio button for the BIO questionnaire.
* no:1 if the user chooses the “No” radio button for the BIO questionnaire.

[Link to raw data](https://www.kaggle.com/osuolaleemmanuel/a-b-testing-analysis-for-smart-ad/data)


## Code and Resources Used: 
**Python Version:** 3.8  
**Packages:** pandas, numpy, sklearn, matplotlib, seaborn, datetime, scipy, random, sklearn, OrdinalEncoder
 

## Data pre-processing:
After data reading from csv to data frame. I did quick check for null values and size of data. As project need to answer the hypothesis question I focused on data where user react to BIO buttons only. 
* I create new data frame only for users that react to BIO buttons yes and no.
* To clean and encode messy data in browser variable by creating new variable called app_code.
 To clean and encode messy data in device_make variable by creating new variable called device_make_new_code. 


## EDA Visualizations:
I generate two useful visualizations and run statistic to understand variables better.
1. Plot histogram for numeric variables
2. Plot  kernel density estimation and scater for numeric variables
3. Run data frame describe function for simple statistic


## Statistic AB testing:
First I calculated users split to review how data are divided.
* I sum and mean the number of users in experiment for each group.
* I used Z test for user that click yes button.
* In next step I calculated probability from Z test different than 0 and Z test positive.
* I calculated p-value for users that click yes button.
As both tests results did not let me reject my project hypothesis. I focused on data quality. I noticed that tested group that reacted to new add was quite small sample with comparison to customers that ignored buttons.
* I decided to "produce" more data(10000 observations) using bootstrap method. The bootstrap method is a re-sampling technique used to estimate statistics on a population by sampling a dataset with replacement.
* I plot a kernel density estimate (KDE) of the bootstrap distributions to visualise difference between users groups.
* I plot the percentage difference between the control and exposed users


## Final conclusion:

* The bootstrap analysis tells that there is a 74% probability that exposed users have strong reaction for new ad design. This indicates the differences between the 'ad' shown to the 'control' group, and the 'creative ad' shown to the 'exposed' group can convert into better ad performance.


## Business recommendation:

* First option is to collect more data for the same experiment to produce better probability.
* Second option to consider is to change approach with using BIO button. To register and provide personal information by user require effort and is not attractive (more than 6k user ignored it completely in experiment).
