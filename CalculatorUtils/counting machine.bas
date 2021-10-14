10 print "What number would you like to count to"
20 input A
30 print "What number would you like to count by"
40 input B
41 if B=0 then goto 30 else 50
50 print "What number would you like to start from"
60 input C
61 print C
70 if A<=C then goto 10 else 80
80 C=C+B
81 print C
90 if A>C then goto 70 else 100
100 print "Do again ? <Yes-1  No-2>"
101 input R
102 if R = 1 then goto 10 else 110
110 end
