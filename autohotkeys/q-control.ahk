return
Timer:
{
    If !%A_ThisHotkey%key
    SetTimer, %A_ThisHotkey%key, -175
    %A_ThisHotkey%key++
    Return
}


q & w::Send, {Blind}^w
q & r::Send, {Blind}^r
q & t::Send, {Blind}^t
q & e::Send, {Blind}^e
q::Send, {Text}q
