import types

proc `+`* (value1, value2: mol): mol {.borrow.}

proc `+=`* (value1: var mol, value2: mol) {.borrow.}

proc `-`* (value: mol): mol {.borrow.}

proc `-`* (value1, value2: mol): mol {.borrow.}

proc `-=`* (value1: var mol, value2: mol) {.borrow.}

proc `*`* (value1, value2: mol): mol {.borrow.}

proc `*=`* (value1: var mol, value2: mol) {.borrow.}

proc `/`* (value1, value2: mol): mol {.borrow.}

proc `/=`* (value1: var mol, value2: mol) {.borrow.}

proc `==`* (value1, value2: mol): bool {.borrow.}

proc toMole* (value: int): mol =
  return value.mol

proc `$`* (value: mol): string =
  return value.repr & "[mol]"

proc `+`* [T] (value1: mol, value2: T): mol =
  return value1 + toMole(value2)

proc `+=`* [T] (value1: var mol, value2: T) =
  value1 += toMole(value2)

proc `-`* [T] (value1: mol, value2: T): mol =
  return value1 - toMole(value2)

proc `-=`* [T] (value1: var mol, value2: T) =
  value1 -= toMole(value2)

proc `*`* [T] (value1: mol, value2: T): mol =
  return value1 * toMole(value2)

proc `*=`* [T] (value1: var mol, value2: T) =
  value1 *= toMole(value2)

proc `/`* [T] (value1: mol, value2: T): mol =
  return value1 / toMole(value2)

proc `/=`* [T] (value1: var mol, value2: T) =
  value1 /= toMole(value2)

