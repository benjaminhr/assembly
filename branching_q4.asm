.data
  text: .asciiz "Checked"

.text
  li $s0, 7
  li $s1, 7
  li $s2, 10

  slt $t0, $s0, $s1
  slt $t1, $s1, $s2

  beq $t0, 1, PRINT
  beq $t1, 1, PRINT

  li $v0, 10
  syscall

  PRINT:   
    li $v0, 4
    la $a0, text
    syscall

    li $v0, 10
    syscall