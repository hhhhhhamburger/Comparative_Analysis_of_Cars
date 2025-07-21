source("data_processing.R")
source("plotting.R")

main <- function() {
  cars <- db_read_cars()
  print("Data loaded successfully")
  
  # Modeling
  lrmodel <- fit_condition_model(cars)
  print(summary(lrmodel))
  
  # Plotting
  print(plot_transmission(cars))
  print(plot_make(cars))
  print(plot_color(cars))
}

# Run main function
main() 