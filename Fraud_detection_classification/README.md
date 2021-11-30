# Data Science Fraud detection.
## Project Overview:

* The project goal is to build a fraud predictive model with accuracy above 90%. Voting Classifier reach 92.67% accuracy score.
* Feature engineering I focus mostly on choosing dependent variables.
* I used Scikit-learn classification models with hyperparameters toning process using Grid Search and Randomized Search CV.
* Finally I run Voting Classifier to combine 3 best models to predicts the output class based on the highest majority of voting.



## Code and Resources Used: 
**Python Version:** 3.8  
**Packages:** pandas, numpy, matplotlib, seaborn, sklearn,
**Models:** Logistic regression, Decision Tree Classifier, Gradient Boosting Classifier, Random Forest Classifier.

[Link to raw data](https://www.kaggle.com/volodymyrgavrysh/fraud-detection-bank-dataset-20k-records-binary) 

## Data Cleaning:
Source of record data is kaggle website. Record include 20468 entries in 113 columns. Columns names include only numeric infomation about column, apart of last binary column targets. 
1. I drop column Unnamed (index duplication)
2. I look for empty strings
3. I print all variables data type and make sure all numeric.


## Feature Engineering and Selection
* I want to review the correlation matrix for variables
* In next step I removed all features with low and null correlation resulted variables.
* As additional clean up I run mutual info classifier to further reduce the dimensionality of data.
* I draw bar chart for variable importance.
* Out of 113 columns finally I chose 66 for models prediction


## Model Building:

* First, I split the data into train and tests sets with a stratify method that make sure the train and test sets have the proportion of examples in each class.
* I will try the below model from scikit-learn:
1. Logistic regression
2. Decision Tree Classifier
3. Gradient Boosting Classifier
4. Random Forest Classifier

* I define function that help with printing results and draw precision-recall curve. List of printed parameters:
1. Accuracy score
2. Confusion matrix
3. Confusion Matrix with Normalized Value
3. Classification report
5. ROC AUC Score
 

## Best Model & Hyperparameter Tuning:

* I used Voting Classifier to finally build model with best 3 performing Scikit-learn classification models. Best models listed:
1. Decision Tree Classifier
2. Gradient Boosting Classifier
3. Random Forest Classifier


