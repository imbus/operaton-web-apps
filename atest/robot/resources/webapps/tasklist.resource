*** Settings ***
Library     Browser


*** Keywords ***
Navigate To Tasklist
    [Documentation]    Navigates to the "Tasks" section of the main menu.
    Click    css=#primary-navigation >> text=Tasks
