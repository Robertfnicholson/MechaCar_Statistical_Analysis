# Deliverable 1 - Linear Regression to Predict MPG

# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# Perform linear regression using the lm() function. In the lm() function, pass in all six 
# variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg_table) 


# Using the summary() function, determine the p-value and the r-squared value for the linear 
# regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg_table))

# Results - p value:    5.35e-11
#           r-squared:  0.6825

# Deliverable 2 - 

