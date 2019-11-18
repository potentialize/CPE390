  .global _Z3setii
  .global _Z5clearii
  .global _Z6toggleii
  .global _Z4testii

_Z3setii:
  @ r0: value
  @ r1: position
  @ r2: mask
  @ |
  mov   r2, #1
  lsl   r2, r1
  orr   r0, r2
  bx    lr

_Z5clearii:
  @ r0: value
  @ r1: position
  @ r2: mask
  @ &
  mov   r2, #1
  lsl   r2, r1
  bic   r0, r2
  bx    lr

_Z6toggleii:
  @ r0: value
  @ r1: position
  @ r2: mask
  mov   r2, #1
  lsl   r2, r1
  eor   r0, r2
  bx    lr

_Z4testii:
  @ r0: value
  @ r1: position
  @ r2: mask
  lsr   r0, r1
  and   r0, #1
  bx    lr
