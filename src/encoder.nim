import std/[tables]
import vars

proc encode*(arg:char): uint32 =
  if arg in charAssoc:
    return charAssoc[arg].code
