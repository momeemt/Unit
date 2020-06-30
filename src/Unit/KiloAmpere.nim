import types

proc `+`* (value1, value2: kA): kA {.borrow.}

proc `+=`* (value1: var kA, value2: kA) {.borrow.}

proc `-`* (value: kA): kA {.borrow.}

proc `-`* (value1, value2: kA): kA {.borrow.}

proc `-=`* (value1: var kA, value2: kA) {.borrow.}

proc `*`* (value1, value2: kA): kA {.borrow.}

proc `*=`* (value1: var kA, value2: kA) {.borrow.}

proc `/`* (value1, value2: kA): kA {.borrow.}

proc `/=`* (value1: var kA, value2: kA) {.borrow.}

proc `==`* (value1, value2: kA): bool {.borrow.}

proc toKiloAmpere* (value: int): kA =
  return value.kA

proc toKiloAmpere* (value: A): kA =
  return value.kA * 1e3.kA

proc toKiloAmpere* (value: mA): kA =
  return value.kA * 1e6.kA

proc `$`* (value: kA): string =
  return value.repr & "[kA]"

proc `+`* [T] (value1: kA, value2: T): kA =
  return value1 + toKiloAmpere(value2)

proc `+=`* [T] (value1: var kA, value2: T) =
  value1 += toKiloAmpere(value2)

proc `-`* [T] (value1: kA, value2: T): kA =
  return value1 - toKiloAmpere(value2)

proc `-=`* [T] (value1: var kA, value2: T) =
  value1 -= toKiloAmpere(value2)

proc `*`* [T] (value1: kA, value2: T): kA =
  return value1 * toKiloAmpere(value2)

proc `*=`* [T] (value1: var kA, value2: T) =
  value1 *= toKiloAmpere(value2)

proc `/`* [T] (value1: kA, value2: T): kA =
  return value1 / toKiloAmpere(value2)

proc `/=`* [T] (value1: var kA, value2: T) =
  value1 /= toKiloAmpere(value2)

