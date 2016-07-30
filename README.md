# DataCleaningProject
Getting and Cleaning Data final project of tidying the given data 

input data = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "./dataset.zip"
download data
unzip the files

steps followed were:

1. all the variables with name "train" are related to the components of files in Train folder
2. all the variables with name "test" are related to the components of files in Test folder
3. read all the files
4. merged the datasets into one dataset.
5. names were made descriptive
6. filtered the data by the variables by string values "mean" and "std"
7. found the aggregate of the dataset based on the subject and activity variables
8. found the mean
9. gave appropriate names to the variables to be both simple and understandable
10. made the data tidy
11.tidyDataSet.txt contains the output

