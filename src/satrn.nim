import os, strutils
import encoder, decoder

let args = commandLineParams()
for arg in args:
  if arg.startsWith("-e:"):
    let argchars = arg.replace("-e:", "")
    for char in argchars:
      stdout.write encode(char)
      stdout.write "O"
    stdout.write "\n"
  elif arg.startsWith("-d:"):
    let argchars = arg.replace("-d:", "")
    var decnums = argchars.split("O")
    for decnum in decnums:
      if decnum.len > 0:
        stdout.write $decode(uint32(decnum.parseUInt()))
    stdout.write "\n"
  elif arg.startsWith("-ed:"):
    let argchars = arg.replace("-ed:", "")
    for char in argchars:
      stdout.write $decode(encode(char))
    stdout.write "\n"
