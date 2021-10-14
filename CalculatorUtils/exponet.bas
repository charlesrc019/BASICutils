[a]
Print "Please enter the number"
input A
print "Please enter the exponent"
input B
B = B - 1
C = A
D = 0
[b]
A = A * C
print A
D = D + 1
if D=B then goto [done] else [b]
[done]
Print " Do again? <Yes-1 No-2>"
input AD
if AD = 1 then goto [a] else [f]
[f]
end
