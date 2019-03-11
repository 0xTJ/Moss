.p816
.smart

.macpack generic

.include "errcode.inc"
.include "functions.inc"
.include "w65c265s.inc"

; void error_code(int code)
.proc error_code
        sei
        enter_nostackvars
        
        rep     #$30
        
        lda     z:3 ; code
        
        sep     #$20
        
        sta     PD7
        
forever_loop:
        bra     forever_loop
        
        leave_nostackvars
        rts
.endproc
