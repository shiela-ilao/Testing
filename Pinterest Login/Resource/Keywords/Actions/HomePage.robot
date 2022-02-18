*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Data/HomePage.Robot

*** Keywords ***
Click Homepage Login button
    click button  ${HOMEPAGE_LOGIN_BTN}