*** Settings ***
Library     Browser


*** Keywords ***
Navigate To Tasklist
    [Documentation]    Navigate to the Tasklist section and ensures that the Operaton Tasklist is open.
    Click    role=link[name="Tasklist"]
    ${title}=    Get Title
    Should Contain    ${title}    Operaton Tasklist

Count Tasks In Tasklist
    [Documentation]    Wait until at least one task is loaded. Afterward count the number of tasks in the Tasklist and gives it back.
    Wait For Condition    element_count    css=div.clickable    >    0
    ${count}=    Get Element Count    css=div.clickable
    Log    message=You have ${count} task(s).

Select A Filter And Count Tasks
    [Documentation]    Select a filter and count the number of the filtered tasks.
    Click    text=filter_test
    ${count}=    Get Element Count    css=.clickable .task
    Log    message=You have ${count} task(s).

Select A Sorting Element
    [Documentation]    Click on the sorting element and choose "Task name".
    Click    css=.sort-by
    Click    css=ul.dropdown-menu[cam-sorting-dropdown]:visible >> text=Task name

Select A Sorting Order
    [Documentation]    Ensure that the sorting order is descending. If it is ascending it will be changed.
    [Arguments]    ${sort_locator}
    ${status}=    Get Attribute    ${sort_locator}    uib-tooltip
    IF    '${status}' == 'Ascending'
        Click    ${sort_locator}
        Log    Changed sorting to descending
    ELSE
        Log    Sorting already descending, nothing to do
    END

Select A Sorting Element And Order
    [Documentation]    Selects a sorting element ("Task name") and ensures that the sorting order is descending.
    Select A Sorting Element
    Select A Sorting Order    css=.sort-direction
