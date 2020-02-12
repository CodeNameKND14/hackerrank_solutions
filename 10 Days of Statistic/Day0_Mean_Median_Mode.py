from collections import Counter

# count the number of values being inputed 
n = int(input())
# grab store and sort the values in a list with list comprehension 
data = sorted([int(i) for i in input().split()])
# divide the sum by n to get the mean
mean = sum(data) / n
# sum the middle two values and divide by 2
median = (data[n //2] + data[-(n // 2 + 1)] / 2
# The Counter(data) counts the frequency and returns a defaultdict
# sorted(Counter(data).items()) sorts using the keys, not the frequency
# grab the smallest number when there are multiple modes  
mode = sorted(Counter(data).items(), key = lambda x: x[1], -x[0]))[-1][0]

print(mean, median, mode sep="\n")

# another way
# numpy has built in functions to find the mean, median, and mode 
import numpy as np
from scipy import stats

n = int(input())
data = sorted([int(i) for i in input().split()])
data_mean = np.mean(data)
data_median = np.median(data)
data_mode = stats.mode(data)[0][0]

print(data_mean, data_median, data_mode sep="\n")
