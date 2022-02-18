*** Settings ***
Resource  ../Resource/Keywords/KeywordsCollection.robot
Resource  ../Resource/Data/LoginPopup.robot
Resource  ../Resource/Data/ProfilePage.robot

*** Test Cases ***
Verify logged in user details
    GIVEN Verify Dashboard Page Title
    WHEN Click Account Option Button
    THEN Verify Successful Logged in  ${ACCOUNT_NAME}  ${VALID_EMAIL}

Log out
    GIVEN Verify Account Options is displayed
    WHEN Click Logout Button
    THEN Verify Home Page Title
    AND End Web Test