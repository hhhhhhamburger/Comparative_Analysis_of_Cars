library(dplyr)
library(sparklyr)
library(SparkR)

# Data reading function
db_read_cars <- function() {
  cars_df <- read.df("", source = "com.mongodb.spark.sql.DefaultSource", database = "Cluster0", collection = "car_prices")
  cars <- as.data.frame(cars_df)
  return(cars)
}

# Modeling function
fit_condition_model <- function(cars) {
  lrmodel <- glm(condition ~ make, data = cars, family = "gaussian")
  return(lrmodel)
} 