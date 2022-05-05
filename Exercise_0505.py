import unittest
import sys

def convert(f, target='c'):
    if target == 'c':
        return (f - 32) / 1.8
    elif target == 'k':
        return ((f - 32) / 1.8) + 273.15
    else:
        raise Exception('wrong target')
        
class TestDivide(unittest.TestCase):
    def test_divide_floats(self):
        self.assertEqual(convert(50), 10)
        self.assertAlmostEqual(convert(70), 21.1111111)
        self.assertAlmostEqual(convert(90), 32.2222222)

if __name__ == '__main__':
    unittest.main()
# Check whether 50, 70, and 90 degrees Fahrenheit are converted correctly to Celsius.
# print(convert(50))