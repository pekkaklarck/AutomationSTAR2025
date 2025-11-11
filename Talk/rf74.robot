*** Settings ***
Documentation
...    Demonstrates secret variables.
...
...    Requires ``PASSWORD`` environment variable to be set
...    to ``rf123``.
Library           Login.py

*** Variables ***
${USER}           robot
${PWD: Secret}    %{PASSWORD}    # Environment variable

*** Test Cases ***
Using secret variable
    Login    ${USER}    ${PWD}

Using non-secret fails
    Login    ${USER}    rf123
