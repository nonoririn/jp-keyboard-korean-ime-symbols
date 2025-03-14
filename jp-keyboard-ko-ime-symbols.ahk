#Requires AutoHotkey v2.0
SendMode "Input"
SetWorkingDir A_ScriptDir
#SingleInstance Force

; Korean input mode detection function
IsKoreanMode() {
    ThreadID := DllCall("GetWindowThreadProcessId", "UInt", WinExist("A"), "UInt*", 0)
    InputLocaleID := DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
    Return (InputLocaleID & 0xFFFF) = 0x0412  ; 0x0412 is the Korean keyboard layout ID
}

#HotIf IsKoreanMode()  ; The hotkeys below are active only in Korean mode
; Remap Shift+Number keys
+1::Send "{!}"  ; Exclamation mark
+2::Send "`""  ; Double quote
+3::Send "{#}"  ; Hash
+4::Send "$"  ; Dollar
+5::Send "%"  ; Percent
+6::Send "{&}"  ; Ampersand
+7::Send "'"  ; Single quote
+8::Send "("  ; Open parenthesis
+9::Send ")"  ; Close parenthesis
+0::Return  ; In Korean mode, Shift+0 does nothing

; SC00C key - Default: '-' / With Shift: '='
SC00C::Send "-"
+SC00C::Send "="

; SC00D key - caret/tilde key
SC00D::Send "{^}"
+SC00D::Send "~"

; SC07D key - backslash/pipe key
SC07D::Send "\"
+SC07D::Send "|"

; SC01A key - at/backtick key
SC01A::Send "@"
+SC01A::Send "``"

; SC01B key - left bracket/brace key
SC01B::Send "["
+SC01B::Send "{{}"

; SC027 key - semicolon/plus key
SC027::Send ";"
+SC027::Send "{+}"

; SC028 key - colon/asterisk key
SC028::Send ":"
+SC028::Send "*"

; SC02B key - right bracket/brace key
SC02B::Send "]"
+SC02B::Send "{}}"

; SC033 key - comma/less-than key
SC033::Send ","
+SC033::Send "<"

; SC034 key - period/greater-than key
SC034::Send "."
+SC034::Send ">"

; SC035 key - slash/question mark key
SC035::Send "/"
+SC035::Send "?"

; SC073 key - backslash/underscore key
SC073::Send "\"
+SC073::Send "_"

; SC029 key - "Half-width" and "full-width" key
SC029::Send "{SC138}"  ; left alt key (SC=138)
#HotIf  ; End of condition block