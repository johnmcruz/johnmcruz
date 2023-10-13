# John Cruz
# Superstore Analysis

install.packages("dplyr")
library(dplyr)

combined_data <- combined_superstore_data %>%
  left_join(returns %>% select(order_id), by = "order_id") %>%
  mutate(returned = ifelse((returns$order_id %in% combined_superstore_data$order_id), "yes", "no"))

uniquewa_returns <- returns %>%
  distinct(order_id, .keep_all = TRUE)

combined_data <- combined_superstore_data %>%
  left_join(uniquewa_returns %>% select(order_id), by = "order_id") %>%
  mutate(returned = ifelse((combined_superstore_data$order_id %in% uniquewa_returns$order_id), "Yes", "No"))

write.csv(combined_data, "/Users/johncruz/Desktop/Certifications/Data/sample-superstore-dataset/combined_superstore_data_v2.csv", row.names = FALSE)
