

1    input "    Enter infomation type number "; T
2    if T=1 then goto 4 else 3
3    if T=2 then goto 8 else 1
4    input "    Enter radius "; N
5    N=N * 2 * 3.14
6    print N
7    goto 11
8    input "    Enter diameter "; N
9    N=N * 3.14
10  print N
11  input "    Would you like to do another one "; R
12  if R=1 then goto 1 else 13
13  if R=2 then goto 14 else 11
14 end


