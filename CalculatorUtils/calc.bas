nomainwin
WindowHeight=145
WindowWidth=265
textbox #calc.o, 10, 10, 240, 20
textbox #calc.t, 10, 30, 240, 20
textbox #calc.f, 10, 60, 60, 20
textbox #calc.a, 80, 60,170, 20
button #calc.go, "  =  ", [com], UL, 10, 90, 240, 20
open "Calculator" for window as #calc
[loop]
wait
print #calc, "trapclose[close]"
[close]
close #calc
end
[com]
print #calc.o, "!contents?  A"
print #calc.t, "!contents?  C"
print #calc.f, "!contents?  B$"
if B$="+" then goto [comadd] else [1]
[1]
if B$="-" then goto [comsub] else [2]
[2]
if B$="*" then goto [commut] else [3]
[3]
if B$="/" then goto [condiv] else [bad]
[comadd]
Q = A + C
goto [comprint]
[comsub]
Q = A - C
goto [comprint]
[commut]
Q = A * C
goto [comprint]
[comdiv]
Q = A / C
goto [comprint]
[comprint]
print #calc.a, Q
goto [loop]
[bad]
notice "Bad function"
goto [loop]
