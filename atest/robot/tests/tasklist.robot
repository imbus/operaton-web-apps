*** Settings ***
Resource    %{FRONTEND_TYPE}/keywords.resource


*** Test Cases ***
View Pending Tasks On Tasklist
    [Documentation]    As a **Team Member**, I want to see an overview of my pending tasks on the Tasklist dashboard,
    ...    so that I can quickly assess my current workload.
    Open Browser And Login
    Navigate To Tasklist
    Count Tasks In Tasklist

Sort And Filter Pending Tasks On Tasklist
    [Documentation]    As a **Team Member**, I want to view tasks within a selected filter, sorted by specified criteria (e.g., creation date),
    ...    so that I can prioritize and manage my work effectively.
    Open Browser And Login
    Navigate To Tasklist
    Select A Filter And Count Tasks
    Select A Sorting Element And Order


*** Keywords ***
Count Tasks In Tasklist
    [Documentation]    # TODO: implement keyword "Select A Filter And Count Tasks".
    [Tags]    feature_missing
    Fail    is it possible to create tasks?

Select A Filter And Count Tasks
    [Documentation]    # TODO: implement keyword "Select A Filter And Count Tasks".
    [Tags]    feature_missing
    Fail    filter option is not implemented!

Select A Sorting Element And Order
    [Documentation]    # TODO: implement keyword "Select A Filter And Count Tasks".  
    [Tags]    feature_missing  
    Fail    sorting option is not implemented!
