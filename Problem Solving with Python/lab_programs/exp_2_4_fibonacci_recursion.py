# 4. Find nth Fibonacci number using recursion.

def Fibonacci(n):
    if n == 1:
        return 1
    elif n == 2:
        return 1
    else:
        return Fibonacci(n - 1) + Fibonacci(n - 2)

n = int(input("Enter a number: "))
if n < 0:
    print("Incorrect input")
else:
    print(f"{n}th Fibonacci number is {Fibonacci(n)}")