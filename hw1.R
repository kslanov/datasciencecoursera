file_path <- 'C:/Users/kslan/OneDrive/Materials/DataScience/R/Projects/Coursera/hw1_data.csv' #establish file path
df <- read.csv2(file_path, header = TRUE, sep = ",", dec = ".") #reading file to data frame

clean_df <- df[complete.cases(df), ] #removing NA's


sub_df <- subset(clean_df, Month == 6, select = Temp) #selecting a subset of a specific column with column conditions
apply(sub_df, 2, mean)


