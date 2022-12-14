*** Settings ***
Documentation    Playground test suite to get started with the Robot Framework
Suite Setup    Change Setup Variable
Test Teardown    Change Teardown Variable

Resource    keywords.resource
Default Tags    positive

*** Test Cases ***

My First Robot Test
    Log To Console    Hello World!

Try to Retrieve Python Library
    Verify Integer
    Verify String

Try to Test Python Library Parameter Passing
    Verify Custom Arguments Passed in Python Function    0    Hello World

Try to Set and Retrieve Argument From Python Class
    Verify Python Variable Access    Ok String

Try Passing Command Line Argument
    [Tags]    cli
    Log To Console    ${consoleArgument}
    Should Not Be Equal As Strings    ${consoleArgument}    World

Check Teardown Worked
    Verify Teardown Was Successful

Try Expecting Python Exception
    [Tags]    negative
    Verify Python Exceptions Can Be Expected

Checking if Suite Setup Was Executed
    Verify Suite Setup Variable

Try Overriding Suite Setup with Test Setup
    [Setup]    Test Level Setup
    Verify Test Setup Variable
