import typeDefinition

const
  kg* = block:
    var u: Unit
    u[siKg] = 1
    u
  ## The type kg represents the mass in the International System of Units (SI) in kilograms.
  
  m* = block:
    var u: Unit
    u[siM] = 1
    u
  ## The type m represents the length in the International System of Units (SI) in metres.
  
  s* = block:
    var u: Unit
    u[siS] = 1
    u
  ## The type s represents the time in the International System of Units (SI) in seconds.
  
  A* = block:
    var u: Unit
    u[siA] = 1
    u
  ## The type A represents the electric current in the International System of Units (SI) in amperes.
  
  K* = block:
    var u: Unit
    u[siK] = 1
    u
  ## The type K represents the temperature in the International System of Units (SI) in kelvins.
  
  mol* = block:
    var u: Unit
    u[siMol] = 1
    u
  ## The type mol represents the amount of substance in the International System of Units (SI) in moles.
  
  cdl* = block:
    var u: Unit
    u[siCd] = 1
    u
  ## The type cdl represents the luminous intensity in the International System of Units (SI) in candelas.
  ## [Notice!!] Since the Nim standard library provides cd procedures, the type name is set to cdl.
