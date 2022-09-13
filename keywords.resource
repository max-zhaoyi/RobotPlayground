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
    ${tmp}=    Custom Validate Args    ${numArg}    ${strArg}
    Should Be True  ${tmp}  

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

    