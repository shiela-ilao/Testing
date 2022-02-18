*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Data/LoginPopup.Robot

*** Keywords ***
Verify Login Popup Page
    element should be visible  ${LOGIN_POPUP_MODAL}

Verify Login Page Contents
    wait until page contains  Welcome to Pinterest
    element should be visible  ${MODAL_CLOSE_BTN}
    element should be enabled  ${MODAL_CLOSE_BTN}

    element should be visible  id:email
    element should be enabled  id:email

    element should be visible  id:password
    element should be enabled  id:password

    element should be visible  ${LOGINPOPUP_LOGIN_BTN}
    element should be enabled  ${LOGINPOPUP_LOGIN_BTN}

Verify if Forgot Password is displayed
   element should be visible  ${FORGOT_PASS}
   element text should be  ${FORGOT_PASS}  Forgot your password?


Verify Empty email field
    element should be visible  id:email-error
    element text should be  id:email-error  You missed a spot! Don't forget to add your email.

Verify Email Format
    element should be visible  id:email-error
    element text should be  id:email-error  Hmm...that doesn't look like an email address.

Verify Invalid Email
    element should be visible   id:email-error
    element text should be  id:email-error  The email you entered does not belong to any account.

Verify Incorrect password is visible
    element should be visible   id:password-error

Verify Incorrect password message
    element text should be  id:password-error  The password you entered is incorrect. Try again or Reset your password
