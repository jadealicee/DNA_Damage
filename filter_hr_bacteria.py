import pandas as pd
import os

#change directory to the location of the data
cd path/to/data

# Define your CSV file path and desired words
csv_file = "extracted_data.csv"
words_col1 = ["sbcD", "sbcC","mre11", "rad50"]  # Words to find in column 1
words_col2 = ["sbcD", "sbcC","mre11", "rad50"]  # Words to find in column 2

# Read the CSV file into a pandas dataframe
df = pd.read_csv(csv_file)

# Filter rows based on conditions
filtered_df = df[(df["Name1"].isin(words_col1)) & (df["Name1"].isin(words_col2))]

# Save the filtered data (optional)
filtered_df.to_csv("filtered_data_hr_bact.csv", index=False)
