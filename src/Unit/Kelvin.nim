import types

proc `+`* (value1, value2: K): K =
  return value1 + value2

proc `+=`* (value1: var K, value2: K) =
  value1 += value2

proc `-`* (value: K): K =
  return -value

proc `-`* (value1, value2: K): K =
  return value1 - value2

proc `-=`* (value1: var K, value2: K) =
  value1 -= value2

proc `*`* (value1, value2: K): K =
  return value1 * value2

proc `*=`* (value1: var K, value2: K) =
  value1 *= value2

proc `/`* (value1, value2: K): K =
  return value1 / value2

proc `/=`* (value1: var K, value2: K) =
  value1 /= value2

proc `==`* (value1, value2: K): bool =
  return value1 == value2

proc toKelvin* (value: int): K =
  return value.K

proc `$`* (value: K): string =
  return value.repr & "[K]"

proc `+`* [T] (value1: K, value2: T): K =
  return value1 + toKelvin(value2)

proc `+=`* [T] (value1: var K, value2: T) =
  value1 += toKelvin(value2)

proc `-`* [T] (value1: K, value2: T): K =
  return value1 - toKelvin(value2)

proc `-=`* [T] (value1: var K, value2: T) =
  value1 -= toKelvin(value2)

proc `*`* [T] (value1: K, value2: T): K =
  return value1 * toKelvin(value2)

proc `*=`* [T] (value1: var K, value2: T) =
  value1 *= toKelvin(value2)

proc `/`* [T] (value1: K, value2: T): K =
  return value1 / toKelvin(value2)

proc `/=`* [T] (value1: var K, value2: T) =
  value1 /= toKelvin(value2)