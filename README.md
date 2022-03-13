# Mechacar Challenge – 
## Overview of Project
This challenge principally involved the use of R and RStudio. My code can be found in “MechaCarChallenge.R.”  
The projects steps were as follows: 
1.	 Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes; 
2.	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots; 
3.	Run t-tests to determine if the manufacturing lots are statistically different from the mean population; and 
4.	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.  </p>
## Linear Regression to Predict MPG
Using R I performed multiple linear regression on the six variables from the Mechacar_mpg.csv file. See the 
RStudio screenshot below. Using the lm() function I passed in all six variables and added the dataframe 
created when I loaded the Mechacar_mpg.csv file. Then using the summary() function, I determined the p-value 
and the r-squared value for the linear regression model. The p-value was 5.35e-11 or 0.0000000000535. The 
r-squared value was 0.6825. The p-value, much smaller than the assumed 0.05 percent significance level, 
indicates that we have sufficient evidence to reject our null hypothesis and accept that the slope of our 
linear model is not zero. The r-squared value represents how well the regression model approximates real-world 
data points. This means that roughly 68% of variability of the dependent variable, i.e. mpg, is explained using 
this linear model. Although better than a coin flip, the 68% prediction rate of the model is not highly effective. 
Three of the variables have p-values significantly greater that 5%, indicating that there is not enough evidence 
to reject the null hypothesis that these three variables provide a random amount of variance in mpg. However, 
two variables, vehicle length and ground clearance, provided a non-random amount of variance to the mpg values 
in the dataset; the two variables had very low p-values of 2.60e-12 and 5.21e-08, respectively, indicating that 
we have sufficient evidence to reject the null hypothesis that the variables provide a random amount of variance 
to the mpg values in the dataset.    </p>

![Mechacar_regression.png](https://github.com/Robertfnicholson/MechaCar_Statistical_Analysis/blob/3207576348a7fcc42b95ef18eea97ae5c7b7baa0/Mechacar_regression.png) </p>

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must 
not exceed 100 pounds per square inch (PSI). The current manufacturing data meets the design specification for all 
manufacturing lots with a variance of 62.3 PSI. However, the variance of Lot 3, 170 PSI, exceeds the design 
specification. See the total summary and the lot summary screenshot below.

![Total_summary_and_lot_summary_dataframe.png](https://github.com/Robertfnicholson/MechaCar_Statistical_Analysis/blob/45986b90b0a6fc14940b65798dfacf0e042c3a8f/Total_summary_and_lot_summary_dataframe.png)

## T-Tests on Suspension Coils
To determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 
pounds per square inch, I ran a t-test to determine if there is a statistical difference between the mean of this 
dataset and a potential population dataset. The results of the t-test are below. The p-value was 0.06028, above 
the 0.05 for the 95% confidence interval. Therefore, there is not enough information to reject the null hypothesis 
that the two means are statistically different. However, on the t-tests for the individual lots, even though lot 1 
and lot 2 have p-values above 0.05, lot 3 has a p-value of 0.04168, which is less than 0.05 for the 95% confidence 
internal. As a result, there is enough information to reject the null for this lot as the lot’s mean and the mean 
of the population are statistically different. 

T-Test for All Lots
![t-test_all_lots.png](https://github.com/Robertfnicholson/MechaCar_Statistical_Analysis/blob/4dbf76bf9ca2ff6180f1089582e6abf2bd2b0909/t-test_all_lots.png)

T-Test for Each Lot
![ Lots1_3_t-tests.png](https://github.com/Robertfnicholson/MechaCar_Statistical_Analysis/blob/4dbf76bf9ca2ff6180f1089582e6abf2bd2b0909/Lots1_3_t-tests.png)

## Study Design: MechaCar vs Competition
The MechaCar statistical study would involve collecting data on Mechacar and its competition over the last 2 years. 
The study would assess cost of ownership per mile driven. In addition to existing data, data required for Mechacar 
and competitive models includes cost of ownership, miles driven, computed cost per mile driven, model and manufacturer. 
Below is a column layout of the data required:
	Model	Manufacturer	Cost	Miles Driven	CPM
	
•	Null hypothesis: The Mechacar’s mean costs of ownership per mile driven is not significantly different of the 
population mean of the cost of ownership per mile of competitive models of other manufacturers. 
•	Alternative Hypothesis: The Mechacar’s costs of ownership per mile driven is significantly different of the 
population mean of the cost of ownership per mile of competitive models of other manufacturers. 
The study would use the one sample t-test to determine if the Mechacar mean cost of ownership per mile is significantly 
different of the population mean of the cost of ownership per mile of competitive models of other manufacturers. 

