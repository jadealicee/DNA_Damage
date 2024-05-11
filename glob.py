#pip3 install csv
#pip3 install BeautifulSoup
#pip3 install glob2

import csv
from bs4 import BeautifulSoup
import glob2 as glob

# Output CSV file name
output_file = "extracted_data.csv"

# Open the CSV file for writing
with open(output_file, 'w', newline='') as csvfile:
  writer = csv.writer(csvfile)

  # Define columns based on your table structure (adjust as needed)
  writer.writerow(["Gene1", "Gene2", "SysName1", "SysName2", "Name1", "Name1", "bOp", "pOp", "Sep", "MOGScore", "GOScore", "COGSim", "ExprSim"])  # Replace with actual column names

  # Loop through all HTML files in the current directory (change path if needed)
  for filename in glob.glob("Downloads/microbesonline/operons/*.html"):
    with open(filename, 'r') as html_file:
      soup = BeautifulSoup(html_file, 'html.parser')

      # Find all tables
      tables = soup.find_all('table')

      for table in tables:
        # Loop through table rows
        for row in table.find_all('tr'):
          # Check if any cell contains 'TRUE' (case-insensitive)
          if any(string.lower() == 'true' for string in row.find_all(string=True)):
            # Extract data from cells (modify based on your table structure)
            data = [cell.string.strip() for cell in row.find_all(['td', 'th'])]
            writer.writerow(data)

print(f"Data extracted and saved to: {output_file}")