; Initialize toggle state
Toggle := true ; Start with the script enabled

; Define left-click as the trigger
~LButton::
    ; Check if the toggle is active
    if (Toggle) {
        ; Send Tab
        Send, {Tab}
    }
return

; Define right-click to disable and enable the script
~RButton::
    Toggle := false ; Disable the script
    SetTimer, ReenableScript, 3000 ; Set a timer for 5 seconds
return

ReenableScript:
    Toggle := true ; Enable the script
return