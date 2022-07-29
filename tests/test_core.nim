import std/unittest
import Unit

suite "Unit-type addition":
  test "once addition (integer)":
    check 10.kg + 20.kg == 30.kg
  
  test "twice addition (integer)":
    check 2.kg + 3.kg + 4.kg == 9.kg
  
  test "addition of different units (integer)":
    check not compiles(1.kg + 1.s)

  test "once addition (float)":
    check 2.0.kg + 3.3.kg ~= 5.3.kg
  
  test "twice addition (float)":
    check 1.4.kg + 2.1.kg + 3.5.kg ~= 7.0.kg
  
  test "addition of different units (integer)":
    check not compiles(2.5.kg + 3.3.s)
  
suite "Unit-type subtraction":
  test "once subtraction (integer)":
    check 100.A - 20.A == 80.A
  
  test "twice substraction (integer)":
    check 100.A - 10.A - 30.A == 60.A
  
  test "subtraction of different units (integer)":
    check not compiles(50.A - 20.cd)

  test "once subtraction (float)":
    check 1.0.A - 0.4.A ~= 0.6.A
  
  test "twice subtraction (float)":
    check 8.8.A - 2.2.A - 1.1.A ~= 5.5.A
  
  test "subtraction of different units (float)":
    check not compiles(20.0.A - 3.3.cd)

suite "Unit-type multiplication":
  test "same units multiplication (integer)":
    check 20.s * 10.s == 200.s(2)
  
  test "same units multiplication2 (integer)":
    check 5.s(10) * 4.s(7) == 20.s(17)
  
  test "different units multiplication (integer)":
    check 10.s * 20.kg == Unit[ud(s=1, kg=1), int](value: 200)

  test "same units multiplication (float)":
    check 3.0.s * 2.5.s ~= 7.5.s(2)
  
  test "same units multiplication2 (float)":
    check 4.0.s(5) * 3.5.s(-2) ~= 14.0.s(3)
  
  test "different units multiplication (float)":
    check 2.2.s * 3.0.K ~= Unit[ud(s=1, K=1), float](value: 6.6)

suite "Unit-type division":
  test "same units division (integer)":
    check 20.s(3) div 10.s == 2.s(2)
  
  test "same units division2 (integer)":
    check 100.s(20) div 3.s(12) == 33.s(8)
  
  test "different units division (integer)":
    check 20.s div 2.kg == Unit[ud(s=1, kg= -1), int](value: 10)

  test "same units division (float)":
    check 7.5.s(3) / 2.5.s ~= 3.0.s(2)
  
  test "same units division2 (float)":
    check 10.5.s(5) / 3.0.s(-2) ~= 3.5.s(7)
  
  test "different units division (float)":
    check 8.0.s / 2.0.K ~= Unit[ud(s=1, K= -1), float](value: 4.0)
