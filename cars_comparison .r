# Databricks notebook source
library(dplyr)
library(sparklyr)
library(SparkR)
library(ggplot2) 

# COMMAND ----------

cars_df <- read.df("",source="com.mongodb.spark.sql.DefaultSource",database = "Cluster0", collection = "car_prices")
cars<-as.data.frame(cars_df)

# COMMAND ----------

ggplot(cars,aes(x = transmission))+
  geom_bar(fill = "blue") +
  labs(title = "Transmission Comparison", x = "Transmission", y = "Count")

# COMMAND ----------

ggplot(cars,aes(x = make))+
  geom_bar(fill = "pink") +
  labs(title = "Make Comparison", x = "Make", y = "Count")

# COMMAND ----------

lrmodel<-glm(condition~make,data=cars,family="gaussian")
summary(lrmodel)

# COMMAND ----------

ggplot(cars,aes(x=color))+geom_bar(fill="green")+labs(title="Color Comparison",x="Color",y="Count")
