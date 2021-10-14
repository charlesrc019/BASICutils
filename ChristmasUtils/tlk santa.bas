'[stat]
nomainwin
'enter$ = chr$(_VK_RETURN) : backspace$ = chr$(_VK_BACK)
'bs = 2
'WindowWidth = 285 : WindowHeight= 60
'UpperLeftX = (DisplayWidth-WindowWidth)/2
'UpperLeftY = (DisplayHeight-WindowHeight)/2
'graphicbox #pass.gb, 0,0,0,0
'textbox #pass.tb, 1,10,275,20
'open "Enter Password" for window as #pass
'print #pass, "trapclose [quitpass]"
'print #pass, "font courier_new 10 bold"
'print #pass.gb, "setfocus"
'print #pass.gb, "when characterInput [letter]"
'timer 400, [t]
'wait
'[t]
'if enter = 1 then timer 0 : goto [ok]
'print #pass.gb, "setfocus"
'wait
'[letter]
'timer 0
'key$ = Inkey$ : key$ = left$(Inkey$, 2) : vkey$ = right$(key$,1)
'if vkey$ <> enter$ and vkey$ <> backspace$ then
'b$ = b$ + key$ : b = len(b$) : fill$ = ""
'for x = 1 to b:fill$ = fill$ + "*" : next x
'print #pass.tb, fill$ : print #pass.gb, "setfocus"
'end if
'if vkey$ = enter$ then enter = 1
'if vkey$ = backspace$ and bs = 2 then
'b = len(b$) : b=b-1 : b$ = left$(b$,b) : fill$ = ""
'for x = 1 to b : fill$ = fill$ + "*" : next x
'print #pass.tb, fill$ : print #pass.gb, "setfocus"
'bs = bs +1: if bs = 3 then bs = 1 else if bs = 1 then bs = 2
'end if : timer 400, [t]
'wait
'[quitpass]
'close #pass
'goto [stat]
'end
'[ok]
'timer 0
'if b$ = "****snow****" then
'close #pass
'goto [begi]
'else
'notice " " + chr$(13) + "Wrong Password!" : print #pass.tb, ""
'print #pass.gb, "setfocus" : b$ = "" : enter = 0 : timer 400, [t]
'end if
'wait
[begi]
WindowWidth = 155
WindowHeight = 285
button #main.send, "Start", [start], UL, 5, 5, 140, 20
texteditor #main.talk, 5, 30, 140, 167
textbox #main.res, 5, 212, 140, 25
open "SantaTalk" for window as #main
print #main.res,"Respond Here"
print #main.talk,"please always respond in lowercase"
wait
[exit]
print #main, "trapclose [quit]"
end
[start]
[a]
print #main.talk, "Hello what is your first inital?"
TIMER 2000
print #main.res,"!contents? name$"
if name$ = "v" then goto [tori] else [01]
[01]
if name$ = "e" then goto [elise] else [a]
[tori]
name$ = "Victoria Rae Simkins"
goto [b]
[elise]
name$ = "Elise Kay Simkins"
goto [b]
print #main.talk,"Well, "; name$ ;" , you are on the Nice List."
print #main.talk,"What would you like for Christmas?"
timer 60000
print #main.res,"!contents? gift$"
print #main.talk,"OK I`ll talk to my elf`s and see if we can get that taken care of."
print #main.talk,""
[c]
print #main.talk,"Are you having a fun holiday?"
print #main.res,"!contents? hoil$"
if holi$ = "yes" then goto [02] else [03]
[03]
if holi$ = "no" then goto [04] else [c]
[02]
print #main.talk,"Good."
goto [d]
[04]
print #main.talk,"Why not?"
10000000
print #main.talk,"But you still can be happy about christmas"
goto [d]
[d]
print #main.talk,"Well I've got to go now the elves need my help."
print #main.talk,"Bi, and thank for talking to me"
print #main.talk," "
print #main.talk,"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
print #main.talk," "
print #main.talk,"Santa has logged off. Bi."
goto [exit]


