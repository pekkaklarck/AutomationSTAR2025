*** Settings ***
Documentation
...    Demonstrates the GROUP syntax and JSON output.
...
...    Using user keywords is generally recommended, but the GROUP.
...    syntax has its benefits especially when data is generated
...    programmatically. In the log file both tests look the same.
...
...    To test generating JSON output file during execution, run
...    tests like:
...
...    | robot --output output.json rf72.json

*** Test Cases ***
Valid login w/ user keywords
    Open browser to login page
    Submit valid credentials
    Login should have succeeded

Valid login w/ GROUP
    GROUP    Open browser to login page
        Open Browser    ${LOGIN URL}
        Title Should Be    Login Page
    END
    GROUP    Submit valid credentials
        Input Username    username_field    demo
        Input Password    password_field    mode
        Click Button    login_button
    END
    GROUP    Login should have succeeded
        Title Should Be    Welcome Page
    END


*** Keywords ***
Open browser to login page
    Open Browser    ${LOGIN URL}
    Title Should Be    Login Page

Submit valid credentials
    Input Username    username_field    demo
    Input Password    password_field    mode
    Click Button    login_button

Login should have succeeded
    Title Should Be    Welcome Page


# Dummy implementation for low level keywords.
# Avoids the need to have a real system in demo.

*** Variables ***
${LOGIN URL}      http://example.com

*** Keywords ***
Open browser
    [Arguments]    ${url}
    No Operation

Title Should Be
    [Arguments]    ${expected}
    No Operation

Input Username
    [Arguments]    ${id}    ${value}
    No Operation

Input password
    [Arguments]    ${id}    ${value}
    No Operation

Click button
    [Arguments]    ${id}
    No Operation
