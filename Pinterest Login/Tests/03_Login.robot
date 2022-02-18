*** Settings ***
Resource  ../Resource/Keywords/KeywordsCollection.robot
Resource  ../Resource/Data/LoginPopup.robot

#Suite Setup  Common.Begin Web Test  ${URL}  ${BROWSER}
#Suite Teardown  Common.End Web Test

*** Test Cases ***

Verify error message on empty form
    GIVEN Click Homepage Login button
    AND Verify Login Popup Page
    WHEN Click Login Button
    THEN Verify Empty email field

Login using invalid email format
    GIVEN Verify Login Popup Page
    WHEN Login your account  ${INVALID_EMAIL_FORMAT}  ${VALID_PASSWORD}
    THEN Verify Email Format

Login using unregistered email
    GIVEN Verify Login Popup Page
    WHEN Login your account  ${INVALID_EMAIL}  ${VALID_PASSWORD}
    THEN Verify Invalid Email

Login using incorrect password
    GIVEN Verify Login Popup Page
    WHEN Login your account  ${VALID_EMAIL}  ${INVALID_PASSWORD}
    THEN Verify Incorrect password is visible
    AND Verify Incorrect password message

Verify Reset Password Link
    GIVEN Verify Incorrect password is visible
    WHEN Click "Reset your password" link
    THEN Verify Reset Password Popup  ${VALID_EMAIL}
    AND Go back to Login Popup

Login using registered account
    GIVEN Verify Login Popup Page
    WHEN Login your account  ${VALID_EMAIL}  ${VALID_PASSWORD}
    THEN Verify Dashboard Page Title



