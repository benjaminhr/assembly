.data
  text: .asciiz "Checked!"

.text
  addiu $t0, $zero, 3
  addiu $t1, $zero, 3

  beq $t0, $t1, PRINT

  PRINT: 
    li $v0, 4
    la $a0, text
    syscall

  slt $s0, $t0, $t1
  beq $t0, $t1, PRINT

  li $v0, 10
  syscall

  