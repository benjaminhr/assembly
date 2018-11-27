# s0 < s1 < s2

.data 
  text: .asciiz "Checked"

.text
  addi $s0, $zero, 5
  addi $s1, $zero, 3
  addi $s2, $zero, 6

  slt $t0, $s0, $s1
  slt $t1, $s1, $s2

  beq $t0, $t1, PRINT

  PRINT:
    li $v0, 4
    la $a0, text
    syscall
  
  li $v0, 10
  syscall
