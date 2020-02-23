import math

# import array length
n = int(input())
# import numbers 
data = list(map(int, input().split())
# find mean
mean = sum(data) / n

# set variable == 0
j = 0
# loop through data and subtract the number by the mean
for i in range(n):
  j+= (data[i] - mean) ** 2
  
# calculate square root 
square_ root = math.sqrt((j/n))
print(round(square_root, 1)
