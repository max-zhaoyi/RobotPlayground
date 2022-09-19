# RobotPlayground

## CLI Commands for running this test set (tried on MacOS zsh with Python3)

### Run all tests in directory

`python3 -m robot --variable consoleArgument:hello .`

### Run all tests without CLI argument

`python3 -m robot --exclude cli .`

### Run all positive tests in directory

`python3 -m robot --include positive .`

### Run all dummy tests in directory

`python3 -m robot --include dummy DummyTestSuite.robot`

### Run all dummy tests excluding "parameter" tag

`python3 -m robot --include dummy --exclude parameter .`

### Run specific test: CLI argument test

`python3 -m robot --variable consoleArgument:hello --test "Try Passing Command Line Argument" .`