import types

proc `+`* (value1, value2: km): km {.borrow.}

proc `+=`* (value1: var km, value2: km) {.borrow.}

proc `-`* (value: km): km {.borrow.}

proc `-`* (value1, value2: km): km {.borrow.}

proc `-=`* (value1: var km, value2: km) {.borrow.}

proc `*`* (value1, value2: km): km {.borrow.}

proc `*=`* (value1: var km, value2: km) {.borrow.}

proc `/`* (value1, value2: km): km {.borrow.}

proc `/=`* (value1: var km, value2: km) {.borrow.}

proc `==`* (value1, value2: km): bool {.borrow.}

proc `$`* (value: km): string =
  return value.repr & "[km]"

proc toKiloMetre* (value: int): km =
  return value.km

proc toKiloMetre* (value: m): km =
  return value.km * 1e-3.km

proc toKiloMetre* (value: cm): km =
  return value.km * 1e-5.km

proc toKiloMetre* (value: mm): km =
  return value.km * 1e-6.km

proc `+`* [T] (value1: km, value2: T): km =
  return value1 + toKiloMetre(value2)

proc `+=`* [T] (value1: var km, value2: T) =
  value1 += toKiloMetre(value2)

proc `-`* [T] (value1: km, value2: T): km =
  return value1 - toKiloMetre(value2)

proc `-=`* [T] (value1: var km, value2: T) =
  value1 -= toKiloMetre(value2)

proc `*`* [T] (value1: km, value2: T): km =
  return value1 * toKiloMetre(value2)

proc `*=`* [T] (value1: var km, value2: T) =
  value1 *= toKiloMetre(value2)

proc `/`* [T] (value1: km, value2: T): km =
  return value1 / toKiloMetre(value2)

proc `/=`* [T] (value1: var km, value2: T) =
  value1 /= toKiloMetre(value2)