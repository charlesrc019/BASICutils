nomainwin
[win]
prompt "Set Timer --- In Minutes"; red
bed = red*60000
call Pause bed
[not]
playwave "bell.wav"
notice "Timer" +chr$(13) + "Time's Up"
end
[sub]
sub Pause mil
t=time$("milliseconds")
while time$("milliseconds")<t+mil
wend
end sub
