# Inputs:
# x10 = N
# Output:
# x11 = 1 (prime) or 0 (not prime)

    addi x11, x0, 1       # Assume N is prime initially
    ble x10, x0, not_prime  # If N <= 1, it's not prime
    li x12, 2             

prime_check_loop:
    mul x13, x12, x12     
    bgt x13, x10, prime   # If divisor^2 > N, N is prime
    rem x14, x10, x12     
    beq x14, x0, not_prime 
    addi x12, x12, 1     
    j prime_check_loop    

not_prime:
    addi x11, x0, 0       
prime:
