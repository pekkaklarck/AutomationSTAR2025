from robot.api.deco import keyword, library
from calculator import Calculator


@library(scope='TEST')
class CalculatorLibrary:

    def __init__(self):
        self.calculator = Calculator()
        self.result = ""

    @keyword
    def push_button(self, button):
        self.result = self.calculator.push(button)

    @keyword
    def result_should_be(self, expected):
        if self.result != expected:
            raise AssertionError(
                f"Expected result to be {expected} "
                f"but it was {self.result}"
            )
