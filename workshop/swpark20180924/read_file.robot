*** Settings ***
Library  CsvLibrary.py

*** Test cases ***
Try to read from user.csv with for loop
    [Tags]  testing
    ${users}=  Read Data   user.csv
    :FOR  ${data}  IN  @{users}
    \   Log to console   ${data[0]}=${data[1]}

Try to read from user.csv
    ${users}=  Read Data   user.csv
    Log to console   User=${users[0][0]}
    Log to console   Pass=${users[0][1]}


