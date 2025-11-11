*** Settings ***
Documentation        Demonstrates variable conversion.

*** Variables ***
${VERSION: float}    7.3

*** Test Cases ***
Conversion in variables section
    Should Be Equal    ${VERSION}       7.3    type=float

Conversion with VAR
    VAR    ${robocon2026: date}    2026-02-10
    Should Be Equal    ${robocon2026.year}    2026    type=int

Conversion with user keyword arguments
    Move    10    down
    Move    10    invalid  # this fails

*** Keywords ***
Move
    [Arguments]    ${distance: int}    ${direction: Literal["UP", "DOWN"]}
    Should Be Equal    ${distance}     10    type=int
    Should Be Equal    ${direction}    DOWN
