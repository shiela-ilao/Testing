*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Data/Dashboard.Robot

*** Keywords ***
Click Account Option Button
    click button  ${ACCNT_OPTION_BTN}