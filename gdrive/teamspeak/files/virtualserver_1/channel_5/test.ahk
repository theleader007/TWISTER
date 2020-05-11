#IfWinActive, ahk_class POEWindowClass


*'::
{
    
;Initialize random delays between 57 and 114 ms (arbitrary values, may be changed)
    
random, delay2, 10, 50
    
random, delay3, 57, 114
    
random, delay4, 57, 114
    
random, delay5, 57, 114

    
send, 1    
random, delay5, 57, 114
    
send, 2 
sleep, %delay2%

send, 3
sleep, %delay2%

send, 4
sleep, %delay2%

send, 5
sleep, %delay2%

}
return