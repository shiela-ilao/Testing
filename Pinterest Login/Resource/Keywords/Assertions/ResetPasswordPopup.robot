*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Data/ResetPasswordPopup.Robot

*** Keywords ***
Verify Reset Password Popup
    [Arguments]  ${email}
    element should be visible  ${RESET_PASS_MODAL}
    element text should be  ${RESET_PASS_MODAL_TITLE}  Password reset email sent
    element should contain  ${RESET_PASS_MODAL_CONTENT}  ${email}