import types

proc `+`* (value1, value2: mA): mA {.borrow.}

proc `+=`* (value1: var mA, value2: mA) {.borrow.}

proc `-`* (value: mA): mA {.borrow.}

proc `-`* (value1, value2: mA): mA {.borrow.}

proc `-=`* (value1: var mA, value2: mA) {.borrow.}

proc `*`* (value1, value2: mA): mA {.borrow.}

proc `*=`* (value1: var mA, value2: mA) {.borrow.}

proc `/`* (value1, value2: mA): mA {.borrow.}

proc `/=`* (value1: var mA, value2: mA) {.borrow.}

proc `==`* (value1, value2: mA): bool {.borrow.}

proc toMilliAmpere* (value: int): mA =
  return value.mA

proc toMilliAmpere* (value: A): mA =
  return value.mA * 1e3.mA

proc toMilliAmpere* (value: kA): mA =
  return value.mA * 1e6.mA

proc `$`* (value: mA): string =
  return value.repr & "[mA]"

proc `+`* [T] (value1: mA, value2: T): mA =
  return value1 + toMilliAmpere(value2)

proc `+=`* [T] (value1: var mA, value2: T) =
  value1 += toMilliAmpere(value2)

proc `-`* [T] (value1: mA, value2: T): mA =
  return value1 - toMilliAmpere(value2)

proc `-=`* [T] (value1: var mA, value2: T) =
  value1 -= toMilliAmpere(value2)

proc `*`* [T] (value1: mA, value2: T): mA =
  return value1 * toMilliAmpere(value2)

proc `*=`* [T] (value1: var mA, value2: T) =
  value1 *= toMilliAmpere(value2)

proc `/`* [T] (value1: mA, value2: T): mA =
  return value1 / toMilliAmpere(value2)

proc `/=`* [T] (value1: var mA, value2: T) =
  value1 /= toMilliAmpere(value2)

