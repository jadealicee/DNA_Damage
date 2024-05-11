import pandas as pd

# Define your CSV file path and desired words
csv_file = "Data/extracted_data.csv"
words_col1 = ["rad50", "herA","mre11", "nurA"]  # Words to find in column 1
words_col2 = ["mre11", "nurA", "rad50", "herA"]  # Words to find in column 2

# Read the CSV file into a pandas dataframe
df = pd.read_csv(csv_file)

# Filter rows based on conditions
filtered_df = df[(df["Name1"].isin(words_col1)) & (df["Name1"].isin(words_col2))]

# Save the filtered data (optional)
filtered_df.to_csv("Data/filtered_data.csv", index=False)
