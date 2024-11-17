# Inputs:
# x10 = n (number of terms)
# x11 = Base address to store results

    addi x12, x0, 0      
    addi x13, x0, 1       
    sw x12, 0(x11)        
    beq x10, x0, done    
    sw x13, 4(x11)       
    addi x10, x10, -2     

fibonacci_loop:
    beq x10, x0, done     
    add x14, x12, x13    
    sw x14, 8(x11)       
    addi x11, x11, 4     
    add x12, x13, x0    
    add x13, x14, x0    
    addi x10, x10, -1    
    j fibonacci_loop     

done:
