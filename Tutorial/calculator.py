class Calculator:
    BUTTONS = set('1234567890+-*/C=')

    def __init__(self):
        self._display = ''

    def push(self, button):
        if button not in self.BUTTONS:
            raise CalculationError(f"Invalid button '{button}'.")
        if button == '=':
            self._display = self._calculate(self._display)
        elif button == 'C':
            self._display = ''
        else:
            self._display += button
        return self._display

    def _calculate(self, expression):
        try:
            return str(eval(expression))
        except SyntaxError:
            raise CalculationError(f"Invalid expression '{expression}'.")
        except ZeroDivisionError:
            raise CalculationError('Division by zero.')


class CalculationError(Exception):
    pass
