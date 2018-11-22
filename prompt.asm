.data
  prompt: .asciiz "Enter your age: "
  message: .asciiz "Your age is: "

.text
  # Prompt user for age
  li $v0, 4
  la $a0, prompt
  syscall

  # Get age
  li $v0, 5
  syscall

  # Store result in $t0
  add $t0, $zero, $v0

  # Display message
  li $v0, 4
  la $a0, message
  syscall

  # Print age
  li $v0, 1
  add $a0, $zero, $t0
  syscall

  addiu $v0, $zero, 10
  syscall
