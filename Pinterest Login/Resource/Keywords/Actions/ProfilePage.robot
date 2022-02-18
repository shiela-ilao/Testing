*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Data/ProfilePage.Robot

*** Keywords ***
Click Logout button
    click element  ${LOGOUT_BTN}
    Sleep  5s