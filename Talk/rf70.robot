*** Settings ***
Documentation
...    Demonstrates listener enhancements and the VAR syntax.
...
...    Listener in the ``Listener.py`` file fixes a typo in
...    "Amsterdamn" and adds a new keyword to the Greet keyword.
...    Enabling the listener requires running tests like:
...
...    | robot --listener Listener.py rf71.robot

*** Variables ***
${GLOBAL}        Initial value

*** Test Cases ***
Listener modifications
    Greet

VAR syntax
    VAR    ${local}     Local value
    VAR    ${GLOBAL}    Global value    scope=GLOBAL
    Should Be Equal     ${local}     Local value
    Should Be Equal     ${GLOBAL}    Global value

VAR syntax 2
    Should Be Equal     ${GLOBAL}    Global value

*** Keywords ***
Greet
    Log    Hello, Amsterdamn!
