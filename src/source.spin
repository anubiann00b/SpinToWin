CON
  _clkmode = xtal1 + pll16x 'Standard clock mode * crystal frequency = 80 MHz
  _xinfreq = 5_000_000
  F3 = 175
  G3 = 196
  Ab3= 208
  A3 = 220
  Bb3= 233
  B3 = 247
  C4 = 262
  D4 = 294
  Eb4= 311
  E4 = 330
  F4 = 339
  LENGTH = 7
  SPEED = 20
  PIN = 1


VAR
  long  symbol
  long  i
  long note
  long counter
  long notes[LENGTH]
  long durations[LENGTH] 'In Twelvths
  
PUB public_method_name

  setup_notes

  counter := durations[0]
  
  dira[1]~~ 'Set pin 1 to true (output)
  repeat
    i++
    if (counter == 0)
      note++
      counter := durations[note//LENGTH]*SPEED
    else
      counter--
    !outa[1]
    waitcnt(clkfreq/notes[note//LENGTH]+cnt)

PUB setup_notes
      notes[0] := A3
  durations[0] := 6
  
      notes[1] := Bb3
  durations[1] := 6
  
      notes[2] := G3
  durations[2] := 2

      notes[3] := Bb3
  durations[3] := 3

      notes[4] := A3
  durations[4] := 6

      notes[5] := A3
  durations[5] := 3

      notes[6] := A3
  durations[6] := 3

      notes[7] := Bb3
  durations[7] := 6

  