library(ggplot2)

# Load forecasted data
forecasted_data <- read.csv('forecasted_activity.csv')

# Visualize forecasted activity with confidence intervals
ggplot(forecasted_data, aes(x = Date, y = Forecast)) +
  geom_line(color = "blue", size = 1.2) +
  geom_ribbon(aes(ymin = Lower95, ymax = Upper95), fill = "lightblue", alpha = 0.4) +
  labs(title = "Forecasted Patient Activity with 95% Confidence Interval",
       x = "Date",
       y = "Activity Volume") +
  theme_minimal() +
  scale_x_date(date_breaks = "3 months", date_labels = "%b %Y")
