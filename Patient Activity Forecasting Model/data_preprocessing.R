library(dplyr)
library(lubridate)

# Load raw data
raw_data <- read.csv('patient_activity_data.csv')

# Data Cleaning and Feature Engineering
cleaned_data <- raw_data %>%
  mutate(Date = as.Date(Date, format = "%Y-%m-%d"),
         Month = month(Date, label = TRUE),
         Year = year(Date),
         Quarter = quarters(Date)) %>%
  filter(!is.na(Activity)) %>%
  group_by(Year, Quarter) %>%
  summarize(QuarterlyActivity = sum(Activity, na.rm = TRUE)) %>%
  ungroup()

# Handling Missing Data (if any)
cleaned_data <- cleaned_data %>%
  mutate(QuarterlyActivity = ifelse(is.na(QuarterlyActivity), 
                                    mean(QuarterlyActivity, na.rm = TRUE), 
                                    QuarterlyActivity))

# Save cleaned and processed data
write.csv(cleaned_data, 'cleaned_patient_activity_data.csv', row.names = FALSE)
