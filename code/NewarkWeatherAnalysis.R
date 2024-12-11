# 1. Load Packages
library(tidyverse)
library(rvest)

# 2a. Get newark2019 data
path1 <- "/Users/fateenahs./Desktop/STAT184/newark_hourly_weather_2019.csv"
newark2019 <- read.csv(path1)

# 2b. Get newark2023 data
path2 <- "/Users/fateenahs./Desktop/STAT184/hourly_weather_newark_2023.csv"
newark2023 <- read.csv(path2)

# 3a. Normalizing Columns for Newark in 2019
newark2019$Time <- as.POSIXct(newark2019$Time, format = "%Y-%m-%d %H:%M") # Set format for Time column
newark2019$Temperature <- as.integer(gsub("F", "", newark2019$Temperature)) # Remove F from Temperature column and convert character to integer
newark2019$Humidity <- as.integer(gsub("%", "", newark2019$Humidity))
newark2019$Precipitation <- as.numeric(gsub("in", "", newark2019$Precipitation))

# 3b. Normalizing Columns for Newark in 2023
newark2023$Time <- as.POSIXct(newark2023$Time, format = "%Y-%m-%d %H:%M") # Set format for Time column
newark2023$Temperature <- as.integer(gsub("F", "", newark2023$Temperature)) # Remove F from Temperature column and convert character to integer
newark2023$Humidity <- as.integer(gsub("%", "", newark2023$Humidity))
newark2023$Precipitation <- as.numeric(gsub("in", "", newark2023$Precipitation))

