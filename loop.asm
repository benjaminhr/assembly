.data
  iterator: .word 0
  sum: .word 0
  size: .word 10

.text
  lw $t0, iterator
  lw $t1, size
  lw $t2, sum

  loop:
    add $t2, $t2, $t0 # add to sum
    addi $t0, $t0, 1  # increment

    beq $t0, $t1, exit_loop
    j loop

  exit_loop:
    addiu $v0, $zero, 10
    syscall
