.data
  text: .asciiz "Checked!"

.text
  # set values to compare
  addiu $s0, $zero, 5
  addiu $s1, $zero, 5

  # compare values
  slt $t0, $s1, $s0

  # result is false => end program
  beq $t0, $zero, END

  # otherwise print
  li $v0, 4
  la $a0, text
  syscall

  END:
    addiu $v0, $zero, 10 
    syscall
