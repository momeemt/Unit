type
  kg* = distinct float
    ## The type kg represents the mass in the International System of Units (SI) in kilograms.
  
  g* = distinct float
    ## The type g is a gram type that represents a mass of 1e-3 kg in the International System of Units (SI).
  
  mg* = distinct float
    ## The type mg is a milligram type that represents a mass of 1e-6 kg in the International System of Units (SI).
  
  m* = distinct float
    ## The type m represents the length in the International System of Units (SI) in metres.

  km* = distinct float
    ## The type km is a kilometre type that represents a length of 1e3 m in the International System of Units (SI).

  cm* = distinct float
    ## The type cm is a centimetre type that represents a length of 1e-2 m in the International System of Units (SI).

  mm* = distinct float
    ## The type mm is a millimetre type that represents a length of 1e-3 m in the International System of Units (SI).
  
  s* = distinct float
    ## The type s represents the time in the International System of Units (SI) in seconds.

  ms* = distinct float
    ## The type ms is a millisecond type that represents a time of 1e-3 s in the International System of Units (SI).

  A* = distinct float
    ## The type A represents the electric current in the International System of Units (SI) in amperes.

  mA* = distinct float
    ## The type mA is a milliampere type that represents a electric current of 1e-3 s in the International System of Units (SI).

  kA* = distinct float
    ## The type kA is a kiloampere type that represents a electric current of 1e3 s in the International System of Units (SI).

  K* = range[0.0 .. high(float)]
    ## The type K represents the temperature in the International System of Units (SI) in kelvins.

  mol* = distinct float
    ## The type mol represents the amount of substance in the International System of Units (SI) in moles.

  cdl* = distinct float
    ## The type cdl represents the luminous intensity in the International System of Units (SI) in candelas.
    ## [Notice!!] Since the Nim standard library provides cd procedures, the type name is set to cdl.

  cm2* = distinct float
    ## The cm2 type represents the square centimeter.

## Private Type (beta)
type
  cm3 = distinct float
  cm4 = distinct float