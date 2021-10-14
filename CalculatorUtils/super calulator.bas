
10 input "Enter funtion number "; F
11 input "Enter opration number 1 "; A
12 input "Enter opration number 2 "; B
20 if F=1 then goto 60 else 30
30 if F=2 then goto 90 else 40
40 if F=3 then goto 120 else 50
50 if F=4 then goto 150 else 51
51 if F=5 then goto 220 else 52
52 if F=6 then goto 201 else 53
53 if F=7 then goto 240 else 54
54 if F=8 then goto 260 else 10
60 C=A + B
70 print C
80 goto 180
90 C=A - B
100 print C
110 goto 180
120 C=A * B
130 print C
140 goto 180
150 C=A / B
160 print C
170 goto 180
180 input "Would you like to do another one (Yes=1 No=2) "; R
190 if R=1 then goto 10 else 200
200 end
201 input "    Enter infomation type number "; T
202 if T=1 then goto 203 else 204
203 if T=2 then goto 203 else 201
204 input "    Enter radius "; N
205 N=N * 2 * 3.14
206 print N
207 goto 11
208 input "    Enter diameter "; N
209 N=N * 3.14
210 print N
215 goto 180
220 input "Enter opration number 3 "; C
225 A=A * B * C
230 print A
235 goto 180
240 input "    Enter infomation type number "; T
242 if T=1 then goto 4 else 3
243 if T=2 then goto 8 else 1
244 input "    Enter radius "; N
245 N=N * N
      N=N * 3.14
246 print N
247 goto 11
248 input "    Enter diameter "; N
      N=N / 2
      N=N * N
      N=N * 3.14
250 print N
255 goto 180
260 input " Enter the first number "; D
265 input " Enter the second number "; E
270 D=D * D
275 E=E * E
280 H=D + E
285 print SQR(H)
290 goto 180
