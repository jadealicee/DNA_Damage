from bs4 import BeautifulSoup
import csv

#Pick name for output file
output_file = "extracted_data.csv"

#Open output file for writing
with open(output_file, 'w', newline='') as csvfile:
  writer = csv.writer(csvfile)

  #Loop through each HTML file
  for file in html_files:
    # Read and parse HTML content
    with open(file, 'r') as f:
      soup = BeautifulSoup(f, 'html.parser')

    #Find all tables
    tables = soup.find_all('table')

    #Loop through each table
    for table in tables:
      #Extract rows
      rows = table.find_all('tr')

      #Loop through each row
      for row in rows:
        #Check if row contains 'TRUE'
        if 'TRUE'.lower() in row.text.lower():
          #Extract cell data
          cells = [cell.text.strip() for cell in row.find_all(['td', 'th'])]
          #Write data to CSV
          writer.writerow(cells)

#Replace with the directory containing HTML files
  html_dir = 'Downloads/microbesonline/operons'
  html_files = [os.path.join(html_dir, f) for f in os.listdir(html_dir) if f.endswith('.html')]

#Convert to the output and print where the file has been saved
  extract_tables_to_csv(html_files, output_file)
  print(f'Tables extracted from {len(html_files)} files and saved to {output_file}')
