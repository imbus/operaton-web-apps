*** Settings ***
Library     Browser


*** Keywords ***
Navigate To Tasklist
    [Documentation]    Navigates to the "Tasks" section of the main menu.
    Click    css=#primary-navigation >> text=Tasks

Count Tasks In Tasklist
    [Tags]    feature_missing
    Fail    is it possible to create tasks?

Select A Filter And Count Tasks
    [Tags]    feature_missing
    Fail    filter option is not implemented!

Select A Sorting Element And Order
    [Tags]    feature_missing
    Fail    sorting option is not implemented!
