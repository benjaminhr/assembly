.data
  message: .asciiz "\nHow many times to loop?  "
  iterator: .word 0
  sum: .word 0
  output: .asciiz "Sum is: "

.text
  li $v0, 4
  la $a0, message
  syscall

  li $v0, 5
  syscall

  # set MAX to t0
  add $t0, $v0, $zero
  addi $t0, $t0, 1

  lw $t1, iterator
  lw $t2, sum

  LOOP:
    add $t2, $t2, $t1
    addi $t1, $t1, 1

    beq $t1, $t0, DONE
    j LOOP

  DONE:
    li $v0, 4
    la $a0, output
    syscall

    add $a0, $t2, $zero
    li $v0, 1
    syscall

  addiu $v0, $zero, 10
  syscall
