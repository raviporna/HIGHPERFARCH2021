import numpy as np
import timeit

size = 6400000

# with numpy
start = timeit.default_timer()
na = np.random.randint(1, 1000, size)
nb = np.random.randint(1, 1000, size)
na += nb
stop = timeit.default_timer()
t1 = stop-start

print('Time with numpy: ', t1)

# without numpy
start = timeit.default_timer()
a = list(range(size))
b = list(range(size))
for i in range(size):
    a[i] += b[i]
stop = timeit.default_timer()
t2 = stop-start

print('Time without numpy: ', t2)

speedup = t2/t1
print('Speedup: ',speedup)