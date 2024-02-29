#Load the dataset
#Dataset actual source: "https://www.kaggle.com/datasets/imyjoshua/average-time-spent-by-a-user-on-social-media"

# install.packages("RCurl")

library(RCurl)
userData <- read.csv(text = getURL("https://raw.githubusercontent.com/MMalavika13/R_DataExploration/main/dummy_data.csv"))
View(userData)

#Data Exploration

#To view topN/bottomN rows - head() / tail()

head(userData,5)
tail(userData,5)

#Summary of the Data - (only for numerical data)
summary(userData)
summary(userData$time_spent)

#To find any missing data
sum(is.na(userData))

#install skimr to expand on the statistics
#  install.packages("skimr")

library(skimr)
#Expanded summary for both numeric and character data
skim(userData) 

#group data by gender and do skim
userData %>% 
  dplyr::group_by(gender) %>% 
  skim() 

#Data Visualisation
#Plots

#Panel Plots

plot(userData)
plot(userData,col="blue")

#Scatter plot
plot(userData$age,userData$time_spent)
plot(userData$age,userData$time_spent, col="green")
plot(userData$age,userData$time_spent, col="pink",xlab = "Age",ylab = "Time Spent")


# Histogram
hist(userData$time_spent)
hist(userData$time_spent,col = "red")









