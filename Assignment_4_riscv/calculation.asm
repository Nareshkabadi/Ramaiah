# Inputs:
# x10 = A, x11 = B, x12 = D
# Output:
# x13 = C

    mul x13, x10, x11    # x13 = A * B
    add x13, x13, x12    # x13 = A * B + D
