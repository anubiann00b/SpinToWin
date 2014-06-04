{Object_Title_and_Purpose}


CON
        _clkmode = xtal1 + pll16x                                               'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000

VAR
  long  symbol
  'long  i
   
OBJ
  'nickname      : "object_name"
  
PUB public_method_name
               
  'repeat i from 0 to 31
  dira[1]:=1 'Set pin 0 to output.
  repeat
    outa[1]:=1
    waitcnt(clkfreq+cnt)
    outa[1]:=0
    waitcnt(clkfreq+cnt)

PRI private_method_name


DAT
name    byte  "string_data",0        
        