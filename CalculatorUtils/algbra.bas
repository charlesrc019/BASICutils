nomainwin
WindowWidth=490
WindowHeight=585
textbox #al.stat, 20, 15, 350, 20
button #al.buo, "Solve Problem",[buo], UL, 370, 13
texteditor #al.nex1, 20, 60, 145, 435
texteditor #al.nex2, 175, 60, 145, 435
texteditor #al.nex3, 330, 60, 145, 435
textbox #al.las, 20, 505, 453, 20
open "Algerbra FX 3.02" for window as #al
print #al, "font  ariel 10"
wait
[buo]
timer 50000
r=0
[begi]
timer 200
print #al.nex1, using("########.#########",  rnd(1)*99999999)
timer 200
print #al.nex2, using("########.#########",  rnd(1)*99999999)
timer 200
print #al.nex3, using("########.#########",  rnd(1)*99999999)
r=r+1
if r=900 then goto [done] else [begi]
[done]
print #al.las, "The Answer is ";using("###.#####",  rnd(1)*200)
wait
print #al, "trapclose[quit]"
[quit]
close #al
