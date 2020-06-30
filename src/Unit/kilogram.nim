import types

proc `+`* (value1, value2: kg): kg {.borrow.}

proc `+=`* (value1: var kg, value2: kg) {.borrow.}

proc `-`* (value: kg): kg {.borrow.}

proc `-`* (value1, value2: kg): kg {.borrow.}

proc `-=`* (value1: var kg, value2: kg) {.borrow.}

proc `*`* (value1, value2: kg): kg {.borrow.}

proc `*=`* (value1: var kg, value2: kg) {.borrow.}

proc `/`* (value1, value2: kg): kg {.borrow.}

proc `/=`* (value1: var kg, value2: kg) {.borrow.}

proc `==`* (value1, value2: kg): bool {.borrow.}

proc `$`* (value: kg): string =
  return value.repr & "[kg]"

proc toKiloGram* (value: int): kg =
  return value.kg

proc toKiloGram* (value: g): kg =
  return value.kg * 1e-3.kg

proc toKiloGram* (value: mg): kg =
  return value.kg * 1e-6.kg

proc `+`* [T] (value1: kg, value2: T): kg =
  return value1 + toKiloGram(value2)

proc `+=`* [T] (value1: var kg, value2: T) =
  value1 += toKiloGram(value2)

proc `-`* [T] (value1: kg, value2: T): kg =
  return value1 - toKiloGram(value2)

proc `-=`* [T] (value1: var kg, value2: T) =
  value1 -= toKiloGram(value2)

proc `*`* [T] (value1: kg, value2: T): kg =
  return value1 * toKiloGram(value2)

proc `*=`* [T] (value1: var kg, value2: T) =
  value1 *= toKiloGram(value2)

proc `/`* [T] (value1: kg, value2: T): kg =
  return value1 / toKiloGram(value2)

proc `/=`* [T] (value1: var kg, value2: T) =
  value1 /= toKiloGram(value2)