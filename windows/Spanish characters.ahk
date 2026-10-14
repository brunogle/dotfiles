#Requires AutoHotkey v2.0

; Use Right Alt + letter for accented vowels
>!a::Send("á")
>!e::Send("é")
>!i::Send("í")
>!o::Send("ó")
>!u::Send("ú")

; Use Right Alt + n for ñ
>!n::Send("ñ")

; Use Right Alt + Shift + letter for Uppercase
>!+a::Send("Á")
>!+e::Send("É")
>!+i::Send("Í")
>!+o::Send("Ó")
>!+u::Send("Ú")
>!+n::Send("Ñ")

; Inverted punctuation
>!?::Send("¿")
>!!::Send("¡")