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

# 2.  Import and read in the Suspension_Coil.csv file as a table.
Sus_Coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function to 
# get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
# summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),
# Maximum_Price=max(price),Num_Vehicles=n(), .groups = 'keep')
# mpg_summary <- mpg %>% group_by(class,year) %>% summarize(Mean_Hwy=mean(hwy),
#         .groups = 'keep')
summarize_sus_coil <- Sus_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), 
                                               Variance = var(PSI), SD = sd(PSI))
# View the dataframe
head(summarize_sus_coil)

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the 
# summarize() functions to group each manufacturing lot by the mean, median, variance, and 
# standard deviation of the suspension coil's PSI column.

lot_summary <- Sus_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), 
                                        Median=median(PSI), 
                                        Variance = var(PSI), 
                                        SD = sd(PSI))

# View the dataframe
head(lot_summary)
                                        
                                            