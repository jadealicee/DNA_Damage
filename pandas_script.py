#pandas method

#pip3 install lxml - required for read_html

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import os
from unicodedata import normalize


os.chdir("Downloads/microbesonline/operons")
tables_on_page = pd.read_html("*.html")
table = tables_on_page[0]
table.to_json("table.json", index=False, orient='table')