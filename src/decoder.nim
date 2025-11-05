import std/[tables]
import vars

proc decode*(code: uint32): char =
  for key, val in charAssoc:
    if val.code == code:
      return key
