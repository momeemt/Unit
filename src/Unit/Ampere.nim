import types

proc `+`* (value1, value2: A): A {.borrow.}

proc `+=`* (value1: var A, value2: A) {.borrow.}

proc `-`* (value: A): A {.borrow.}

proc `-`* (value1, value2: A): A {.borrow.}

proc `-=`* (value1: var A, value2: A) {.borrow.}

proc `*`* (value1, value2: A): A {.borrow.}

proc `*=`* (value1: var A, value2: A) {.borrow.}

proc `/`* (value1, value2: A): A {.borrow.}

proc `/=`* (value1: var A, value2: A) {.borrow.}

proc `==`* (value1, value2: A): bool {.borrow.}

proc toAmpere* (value: int): A =
  return value.A

proc toAmpere* (value: mA): A =
  return value.A * 1e-3.A

proc toAmpere* (value: kA): A =
  return value.A * 1e3.A

proc `$`* (value: A): string =
  return value.repr & "[A]"

proc `+`* [T] (value1: A, value2: T): A =
  return value1 + toAmpere(value2)

proc `+=`* [T] (value1: var A, value2: T) =
  value1 += toAmpere(value2)

proc `-`* [T] (value1: A, value2: T): A =
  return value1 - toAmpere(value2)

proc `-=`* [T] (value1: var A, value2: T) =
  value1 -= toAmpere(value2)

proc `*`* [T] (value1: A, value2: T): A =
  return value1 * toAmpere(value2)

proc `*=`* [T] (value1: var A, value2: T) =
  value1 *= toAmpere(value2)

proc `/`* [T] (value1: A, value2: T): A =
  return value1 / toAmpere(value2)

proc `/=`* [T] (value1: var A, value2: T) =
  value1 /= toAmpere(value2)

