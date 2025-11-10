*** Settings ***
Library           Basics.py

*** Test Cases ***
First example
    First keyword    Robot
    First Keyword    Amsterdam

Arguments
    Greet   Robot
    Greet   Robot   Hi
    Greet   Robot   Hi    ?
    Greet   Robot   ending=??  # Named argument syntax

Embedded arguments
    Pekka drinks 2 beers
    René drinks 3 lonkero

Returning value
    ${value} =    Return something
    Should Be Equal    ${value}    something

Status
    Should be positive    67
    Should be positive    3.14
    Should be positive    -4

Argument conversion
    Should be positive    Coffee break!
