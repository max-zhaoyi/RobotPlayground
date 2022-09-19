*** Settings ***
Documentation    Playground test suite to get started with the Robot Framework

Resource    keywords.resource
Default Tags    positive

*** Test Cases ***

Dummy Robot Test
    [Tags]    dummy
    Log To Console    Dummy Test!

Try to Retrieve Python Library
    [Tags]    dummy
    Verify Integer
    Verify String

Try to Test Python Library Parameter Passing
    [Tags]    dummy    parameter
    Verify Custom Arguments Passed in Python Function    0    Hello World

Try to Set and Retrieve Argument From Python Class
    Verify Python Variable Access    Ok String
