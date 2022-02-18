*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Data/LoginPopup.Robot

*** Keywords ***
Close Login modal pop up
    click button  ${MODAL_CLOSE_BTN}

Login your account
    [Arguments]  ${email}  ${password}
    Fill "Email" Field  ${email}
    Fill "Password" Field  ${password}
    Click Login button

Fill "Email" Field
    [Arguments]  ${email}
    press keys  id:email  CTRL+a+BACKSPACE
    input text  id:email  ${email}

Fill "Password" Field
    [Arguments]  ${password}
    press keys  id:password  CTRL+a+BACKSPACE
    input password  id:password  ${password}

Click "Forgot Your Password?" Link
    click link  ${FORGOT_PASS}

Click Login button
    click button  ${LOGINPOPUP_LOGIN_BTN}
    Sleep  3s

Click "Reset your password" link
    click button  ${RESET_PASS}
    Sleep  2s