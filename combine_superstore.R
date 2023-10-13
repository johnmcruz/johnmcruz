#
library(readr)
west_superstore <- read_csv("Desktop/Certifications/Data/sample-superstore-dataset/data/west_superstore.csv")
east_superstore <- read_csv("Desktop/Certifications/Data/sample-superstore-dataset/data/east_superstore.csv")
south_superstore <- read_csv("Desktop/Certifications/Data/sample-superstore-dataset/data/south_superstore.csv")
central_superstore <- read_csv("Desktop/Certifications/Data/sample-superstore-dataset/data/central_superstore.csv")

# List of file paths
file_paths <- c("Desktop/Certifications/Data/sample-superstore-dataset/data/west_superstore.csv", 
                "Desktop/Certifications/Data/sample-superstore-dataset/data/east_superstore.csv", 
                "Desktop/Certifications/Data/sample-superstore-dataset/data/south_superstore.csv", 
                "Desktop/Certifications/Data/sample-superstore-dataset/data/central_superstore.csv")

# Initialize an empty data frame to hold the combined data
combined_data <- data.frame()

# Loop through the file paths and read and combine the data
for (file_path in file_paths) {
  # Read the CSV file
  data <- read.csv(file_path, header = TRUE)
  
  # Combine the data with the existing combined_data
  combined_data <- rbind(combined_data, data)
}

# Save the combined data to a single CSV file
write.csv(combined_data, "/Users/johncruz/Desktop/Certifications/Data/sample-superstore-dataset/combined_superstore_data.csv", row.names = FALSE)

