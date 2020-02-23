import Statistics as st
# read in input from STDIN
n = int(input())
# grab the elements 
data = list(map(int, input().split()))
# grab the frequency 
freq = list(map(int, input().split()))

# create an empty list 
s = []

# loop through the range of n 
for i in range(n):
  # multiple the frequency by the data number and store it in a list 
  s+= [data[i]] * freq[i]
# sum the freq and sort s
N = sum(freq)
s.sort()

# write an if-else statement to find q1 and q3
if n%2 != 0:
  q1 = st.median(s[:N//2])
  q3 = st.median(s[N//2+1:])
else:
  q1 = st.median(s[:N//2])
  q3 = st.median(s[N//2:])
  
# find the range 
ir = round(float(q3-q1), 1)
print(ir)
