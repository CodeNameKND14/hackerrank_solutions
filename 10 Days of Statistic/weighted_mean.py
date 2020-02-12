# bring in sample input
# number of values
n = int(input())
# values
data = [int(i) for i in input().split()]
# weights
weight = [int(x) for x in input().split()]
total = 0
num = 0
# loop through both weight and data lists
for n, w in zip(weight, data):
    # increment total by (w*n)
    total += (w*n)
    # increment num by n
    num+=n
# calculate the weighted mean by divideing the total by the sum of the numbers
weighted_mean = total/num

print(round(weighted_mean, 1))
