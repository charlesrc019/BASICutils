z= 0
 ctrl$ = chr$(_VK_CONTROL)
    print "Tap CTRL Key lightly"
print "Ready to Count"
windowheight = 1
windowwidth = 1
open "Tic Counter" for graphics as #graph
    print #graph, "when characterInput [keyPressed]"
    print #graph, "trapclose [quit]"

[loopHere]
    'make sure #graph has input focus
    print #graph, "setfocus"
    'scan for events
    scan
    goto [loopHere]

[keyPressed]
    key$ = left$(Inkey$, 2)


        if right$(key$, 1) = ctrl$ then
            z = z + 0.5
            print z
          else
           goto [loopHere]
      end if
        goto [loopHere]

[quit]

    print "Quitting"
    close #graph
    end

