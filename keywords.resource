*** Settings ***
Documentation    Just a simple resource file for TestSuite.robot
...
Library    integerLib.py
Library    stringLib.py
Library    customLib.py

*** Variables ***
${consoleArgument}    World

*** Keywords ***
Verify Integer
    ${returnedInteger}=    Return Integer
    Should Be Equal As Integers   ${returnedInteger}    0    

Verify String
    ${returnedString}=    Return String
    Should Be Equal As Strings    ${returnedString}    Hello World

Verify Custom Arguments Passed in Python Function
    [Arguments]    ${numArg}    ${strArg}
    Custom Validate Args    ${numArg}    ${strArg}

Verify Python Variable Access
    [Arguments]    ${strArg}
    Global Store Arg    ${strArg}
    ${tmp}=    Global Read Arg
    Log To Console    ${tmp}
    Should Be Equal As Strings    ${strArg}    ${tmp}

Verify Teardown Was Successful
    ${tmp}=    Global Read Teardown Arg
    Should Be Equal As Strings    ${tmp}    after teardown

Change Teardown Variable
    Execute Teardown
    Log To Console    Tearing Down!

Verify Python Exceptions Can Be Expected
    Run Keyword And Expect Error    *    Verify Arg Value   Hello

Change Setup Variable
    Execute Setup
    Log To Console    Setting up!

Verify Suite Setup Variable
    ${tmp}=    Global Read Setup Arg
    Should Be Equal As Strings    ${tmp}    after setup
Test Level Setup
    Execute Setup Test

Verify Test Setup Variable
    ${tmp}=    Global Read Setup Arg
    Should Be Equal As Strings    ${tmp}    after test setup
    