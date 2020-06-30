import unittest
import Unit

suite "test the assignment operator":
  setup:
    var
      left1 = 100.m
      left2 = 12.km
      left3 = 20.cm
      left4 = 500.mm
    const
      right1 = 200.m
      right2 = 10.km
      right3 = 200.cm
      right4 = 250.mm
      result1 = 300.m
      result2 = 2.km
      result3 = 4000.cm
      result4 = 2.mm
    
    left1 += right1
    left2 -= right2
    left3 *= right3
    left4 /= right4

  test "test case 1":
    check left1 == result1
  
  test "test case 2":
    check left2 == result2
  
  test "test case 3":
    check left3 == result3
  
  test "test case 4":
    check left4 == result4