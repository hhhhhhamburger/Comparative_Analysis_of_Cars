library(ggplot2)

plot_transmission <- function(cars) {
  ggplot(cars, aes(x = transmission)) +
    geom_bar(fill = "blue") +
    labs(title = "Transmission Comparison", x = "Transmission", y = "Count")
}

plot_make <- function(cars) {
  ggplot(cars, aes(x = make)) +
    geom_bar(fill = "pink") +
    labs(title = "Make Comparison", x = "Make", y = "Count")
}

plot_color <- function(cars) {
  ggplot(cars, aes(x = color)) +
    geom_bar(fill = "green") +
    labs(title = "Color Comparison", x = "Color", y = "Count")
} 