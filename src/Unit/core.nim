import std/[strformat, strutils, sugar]

type
  UnitDimension* = object
    second: int
    metre: int
    kilogram: int
    ampere: int
    kelvin: int
    mole: int
    candela: int

  Unit* [UD: static UnitDimension, T: SomeNumber] = object
    value: T

iterator pairs* (unit: UnitDimension): tuple[key: string, dimension: int] =
  var result = @[
    ("s", unit.second),
    ("m", unit.metre),
    ("kg", unit.kilogram),
    ("A", unit.ampere),
    ("K", unit.kelvin),
    ("mol", unit.mole),
    ("cd", unit.candela)
  ]
  for (key, dimension) in result:
    yield (key, dimension)

proc `$`* (unitDimension: UnitDimension): string =
  var denominator, numerator: seq[string]
  for key, dimension in unitDimension.pairs:
    if dimension > 1:
      denominator.add &"{key}^{unitDimension.second}"
    elif dimension == 1:
      denominator.add key
    elif dimension == -1:
      numerator.add key
    elif dimension < -1:
      numerator.add &"{key}^{unitDimension.second}"
  result.add "[" & denominator.join("⋅")
  if numerator.len > 0:
    result.add " / " & numerator.join("⋅")
  result.add "]"

proc `$`* [UD: static UnitDimension, T: SomeNumber] (unit: Unit[UD, T]): string =
  result = $unit.value & $UD

proc ud* (s=0, m=0, kg=0, A=0, K=0, mol=0, cd=0): UnitDimension =
  result = UnitDimension(
    second: s,
    metre: m,
    kilogram: kg,
    ampere: A,
    kelvin: K,
    mole: mol,
    candela: cd
  )

proc map* (left, right: UnitDimension, fn: proc (left, right: int): int): UnitDimension =
  result = ud(
    fn(left.second, right.second),
    fn(left.metre, right.metre),
    fn(left.kilogram, right.kilogram),
    fn(left.ampere, right.ampere),
    fn(left.kelvin, right.kelvin),
    fn(left.mole, right.mole),
    fn(left.candela, right.candela)
  )

proc `+`* (left, right: UnitDimension): UnitDimension =
  map(left, right, (left, right) => left + right)

proc `-`* (left, right: UnitDimension): UnitDimension =
  map(left, right, (left, right) => left - right)

proc `+`* [UD: static UnitDimension, T: SomeNumber] (left, right: Unit[UD, T]): Unit[UD, T] =
  result = Unit[UD, T](left.value + right.value)

proc `-`* [UD: static UnitDimension, T: SomeNumber] (left, right: Unit[UD, T]): Unit[UD, T] =
  result = Unit[UD, T](left.value - right.value)

proc `*`* [UD: static UnitDimension, T: SomeNumber] (left: Unit[UD, T], right: T): Unit[UD, T] =
  result = Unit[UD, T](left.value * right)

proc `/`* [UD: static UnitDimension, T: SomeNumber] (left: Unit[UD, T], right: T): Unit[UD, T] =
  result = Unit[UD, T](left.value / right)

proc `==`* [UD: static UnitDimension, T: SomeNumber] (left: Unit[UD, T], right: T): Unit[UD, T] =
  result = left.value == right.value

proc `>`* [UD: static UnitDimension, T: SomeNumber] (left: Unit[UD, T], right: T): Unit[UD, T] =
  result = left.value > right.value

proc `>=`* [UD: static UnitDimension, T: SomeNumber] (left: Unit[UD, T], right: T): Unit[UD, T] =
  result = left.value >= right.value

proc `<`* [UD: static UnitDimension, T: SomeNumber] (left: Unit[UD, T], right: T): Unit[UD, T] =
  result = left.value < right.value

proc `<=`* [UD: static UnitDimension, T: SomeNumber] (left: Unit[UD, T], right: T): Unit[UD, T] =
  result = left.value <= right.value

proc `*`* [UD1, UD2: static UnitDimension, T: SomeNumber] (left: Unit[UD1, T], right: Unit[UD2, T]): Unit[UD1+UD2, T] =
  result = Unit[UD1+UD2, T](value: left.value * right.value)

proc `div`* [UD1, UD2: static UnitDimension, T: SomeInteger] (left: Unit[UD1, T], right: Unit[UD2, T]): Unit[UD1-UD2, T] =
  result = Unit[UD1-UD2, T](value: left.value div right.value)

proc `/`* [UD1, UD2: static UnitDimension, T: SomeFloat] (left: Unit[UD1, T], right: Unit[UD2, T]): Unit[UD1-UD2, T] =
  result = Unit[UD1-UD2, T](value: left.value / right.value)
