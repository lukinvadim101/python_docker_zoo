import pandas as pd
import numpy as np

print("Here's a Pandas Example")
df = pd.read_csv('testfile.csv')

print(df.to_string())

print("\nHere's a Numpy Example")
arr = np.array([1, 2, 3, 4, 5, 4, 4, 5, 4])

x = np.where(arr == 4)

print(x)