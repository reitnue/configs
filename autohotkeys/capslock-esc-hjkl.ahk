#Persistent
SetCapsLockState, AlwaysOff

CapsLock & k::
    send {Blind}{Up}
return

CapsLock & j::
    send {Blind}{Down}
return

CapsLock & h::
    send {Blind}{Left}
return

CapsLock & l::
    send {Blind}{Right}
return

CapsLock & u::
    send {Blind}{Home}
return

CapsLock & i::
    send {Blind}{End}
return

; Capslock only, Send Escape
CapsLock::Send, {ESC}
