# Patient Activity Forecasting Model

## Overview
This project demonstrates the development of a forecasting model in R to predict patient activity volumes. The goal is to enhance the accuracy of resource allocation and planning in a healthcare setting by using historical patient activity data.

## Features
- **Data Preprocessing**: Cleaning and transforming raw patient activity data, including handling missing values and feature engineering (e.g., extracting date components).
- **Time Series Analysis**: Decomposing the time series data to understand underlying trends, seasonality, and residuals.
- **ARIMA Modeling**: Implementing an ARIMA model to forecast future patient activity, with model selection based on statistical tests.
- **Visualization**: Creating visualizations of both historical data and forecasted results, including confidence intervals.

## Tech Stack
- **Programming Language**: R
- **Libraries**: `dplyr`, `lubridate`, `forecast`, `ggplot2`, `tseries`
- **Data Source**: `patient_activity_data.csv` - A synthetic dataset representing monthly patient activity volumes.

## Project Structure
- **data_preprocessing.R**: Script for cleaning and preparing the dataset.
- **forecasting_model.R**: Script for building and evaluating the ARIMA model.
- **visualization.R**: Script for visualizing the forecasted data.
- **patient_activity_data.csv**: The dataset used in this project.

## How to Run
1. Clone the repository.
2. Ensure all R dependencies are installed (`dplyr`, `lubridate`, `forecast`, `ggplot2`, `tseries`).
3. Run `data_preprocessing.R` to clean and preprocess the data.
4. Run `forecasting_model.R` to build and generate forecasts.
5. Run `visualization.R` to visualize the forecast results.

## Results
The ARIMA model accurately predicts patient activity volumes, with a forecasted increase of X% over the next year. The visualizations provide a clear representation of expected trends and potential variations.

## Future Work
- Experiment with different forecasting models (e.g., Prophet, LSTM).
- Integrate the model into a real-time dashboard for continuous monitoring.
- Extend the model to include external factors (e.g., seasonal events, public holidays).
