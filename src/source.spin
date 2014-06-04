{Object_Title_and_Purpose}


CON
        _clkmode = xtal1 + pll16x                                               'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000

VAR
  long  symbol
  long  i
   
OBJ
  'nickname      : "object_name"
  
PUB public_method_name
               
  dira[1]:=1 'Set pin 0 to output.
  repeat i from 100 to 10000
    outa[1]:=1
    waitcnt(clkfreq/i+cnt)
    outa[1]:=0
    waitcnt(clkfreq/i+cnt)

PRI private_method_name


DAT
name    byte  "string_data",0        
        