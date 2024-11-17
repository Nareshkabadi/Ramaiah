# Inputs:
# x10 = Base address of array
# x11 = Size of array (n)

    addi x12, x10, 0      # x12 = start pointer (points to base address)
    add x13, x10, x11     # x13 = end pointer = base + n
    addi x13, x13, -4     # Adjust for zero-based index (last element)

reverse_loop:
    bge x12, x13, done    # Exit if start >= end

    lw x14, 0(x12)        # Load element from start pointer
    lw x15, 0(x13)        # Load element from end pointer
    sw x14, 0(x13)        # Store start element at end pointer
    sw x15, 0(x12)        # Store end element at start pointer

    addi x12, x12, 4      # Move start pointer forward
    addi x13, x13, -4     # Move end pointer backward
    j reverse_loop        # Repeat

done:
