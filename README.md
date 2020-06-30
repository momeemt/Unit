# Unit - A library that provides unit types

Unit is a library that provides unit types in Nim.  
It reduces the burden on the developer by expressing "units" as types instead of expressing them in the head and in writing.
  
For example,

```nim
import Unit

const
  my_height = 1.72.m
  my_weight = 52.5.kg
  make_a_cup_of_noodles = 180.s
  electric_current = 20.A
  today_temperature = 302.15.K     # I live in Tokyo ;)
  glass_of_water = 6e24.mol
  super_led = 15.cdr

echo $my_height
# => 1.72[m]

echo $(toCentiMetre(my_height))
# => 172.0[cm]

echo my_height.toCentiMetre.repr
# => 172.0
```

## Goals

- Supports all existing units and frees the programmer from unit conversion.
- I'm going to be able to describe units in a syntax that more closely resembles natural language.

## Support Unit

- length (m, km, cm, mm)
- mass (kg, g, mg)
- time (s, ms)
- electric current (A, mA, kA)
- temperature (K)
- amount of substance (mol)
- luminous intensity (cdr)
  
[Notice!!] Since the Nim standard library provides cd procedures, the type name is set to cdr.

## Developer
Momeemt  
[Github](https://www.github.com/momeemt)  
[Twitter](https://www.twitter.com/momeemt)
