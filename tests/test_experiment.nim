import unittest
import Unit

suite "metre operation":
  setup:
    let left = 10*m
    let right = 20*m
    let scala = 2
  
  test "testcase 1":
    assert left + right == 30*m
  
  test "testcase 2":
    assert left * scala == 20*m