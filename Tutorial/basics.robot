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
