    .syntax unified
    .cpu cortex-m4
    .thumb
.data
    X: .word 0
    Y: .word 0
    Z: .word 0
.text
    .global main
main:
    ldr r0, =X
    movs r3 , #5
    str r3, [r0]

    ldr r1, =Y
    movs r3, #10
    str r3, [r1]

    ldr r4, =X
    ldr r0, [r4]
    ldr r4, =Y
    ldr r1, [r4]


    muls r0, r0, r3
    adds r0, r0, r1
    ldr r2, =X
    str r0, [r2]

    ldr r2, =Z
    subs r1, r1, r0
    str r1, [r2]
L: B L
