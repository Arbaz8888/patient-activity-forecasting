library(forecast)
library(tseries)
library(dplyr)

# Load cleaned data
cleaned_data <- read.csv('cleaned_patient_activity_data.csv')

# Create time series object
ts_data <- ts(cleaned_data$QuarterlyActivity, start = c(2020, 1), frequency = 4)

# Decompose time series to analyze trend, seasonality, and residuals
decomposed <- decompose(ts_data)

# Plot decomposed components
plot(decomposed)

# Augmented Dickey-Fuller Test to check stationarity
adf.test(ts_data)

# Fit ARIMA model
fit <- auto.arima(ts_data, seasonal = TRUE, stepwise = FALSE, approximation = FALSE)

# Summary of model
summary(fit)

# Forecast for the next 8 quarters (2 years)
forecasted <- forecast(fit, h = 8)

# Plot the forecast
plot(forecasted)

# Save forecasted data
forecasted_df <- data.frame(Date = time(forecasted$mean),
                            Forecast = as.numeric(forecasted$mean),
                            Lower95 = forecasted$lower[,2],
                            Upper95 = forecasted$upper[,2])

write.csv(forecasted_df, 'forecasted_activity.csv', row.names = FALSE)
