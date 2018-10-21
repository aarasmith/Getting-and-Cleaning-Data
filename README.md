# Getting-and-Cleaning-Data
#run_anlysis.R
##run_analysis.R reads the datasets from the UCI HAR Dataset and combines the data into one large dataframe
##It extracts mean and standard deviation data into data_mean_std
##It transforms activity types from numeric to descriptive strings
##It applies descriptive labels to the variables in data_mean_std
##It creates a tidy dataset from data_mean_std with the average of each variable for each activity and each subject called finaldata
