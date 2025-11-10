*** Settings ***
Library           CalculatorLibrary.py

*** Test Cases ***
Pushing buttons
    Push Button    1
    Push button    2
    Result should be    12

Calculation
    Push button    1
    Push button    +
    Push button    2
    Push button    =
    Result should be    3
