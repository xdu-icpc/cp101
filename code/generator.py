from random import randint, seed
seed(int(input()))
n = randint(1, 10)
print(n)
print(" ".join([str(randint(1, 100)) for i in range(n)]))
