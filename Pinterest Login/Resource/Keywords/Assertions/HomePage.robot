*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Data/HomePage.Robot

*** Keywords ***
Verify Home Page Title
    wait until page contains  Pinterest
    element text should be  ${TITLE_PAGE}  Pinterest

Verify Login Button
    element should be visible  ${HOMEPAGE_LOGIN_BTN}
    element should be enabled  ${HOMEPAGE_LOGIN_BTN}