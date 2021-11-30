"""Add ?raw=true at the end of the GitHub URL to get the raw file link.

In your case,"""

import pandas as pd
url = 'https://github.com/lukes/ISO-3166-Countries-with-Regional-Codes/blob/master/all/all.csv?raw=true'
df = pd.read_csv(url,index_col=0)
#df = pd.read_csv(url)

print(df.head(5))