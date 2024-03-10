.global _start
.func _start

_start:
    PUSH {LR}
    LDR R0, =#0x5		      @string
    MOV R1, #0x5                      @ iterations counter
_loop:
    BL  _loop
_exit:
    POP {PC}
    MOV PC, LR
