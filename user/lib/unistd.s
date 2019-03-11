.p816
.smart

.macpack generic

.include "functions.inc"
.include "unistd.inc"

.code

; ssize_t read(int fd, void *buf, size_t nbyte)
.proc read
        enter_nostackvars
        rep     #$30

        lda     z:7 ; nbyte
        pha
        lda     z:5 ; buf
        pha
        lda     z:3 ; fd
        pha
        
        cop     $04

        leave_nostackvars
        rts
.endproc

; ssize_t write(int fd, const void *buf, size_t nbyte)
.proc write
        enter_nostackvars
        rep     #$30

        lda     z:7 ; nbyte
        pha
        lda     z:5 ; buf
        pha
        lda     z:3 ; fd
        pha
        
        cop     $05

        leave_nostackvars
        rts
.endproc

; int close(int fd)
.proc close
        enter_nostackvars
        rep     #$30

        lda     z:3 ; fd
        pha
        
        cop     $0A

        leave_nostackvars
        rts
.endproc
