*** Variables ***

#Login Pop up Modal
${LOGIN_POPUP_MODAL} =  //div[@data-test-id="login-modal-default"]

#Login Modal Pop up Close Button
${MODAL_CLOSE_BTN} =  //div[@data-test-id="full-page-signup-close-button"]/button

#Email Test Data
${VALID_EMAIL} =  ilao.shiela@yahoo.com
${INVALID_EMAIL_FORMAT} =  invalid email format
${INVALID_EMAIL} =  fdsafdsa@dsafs.com

#Password Test DATA
${VALID_PASSWORD} =  rainbow92
${INVALID_PASSWORD} =  invalidpass

#Forgot your Password Link
${FORGOT_PASS} =  //div[@data-test-id="password-reset-button"]/div/div/a

#Login button on Login popup
${LOGINPOPUP_LOGIN_BTN} =  //div[@data-test-id="registerFormSubmitButton"]/button

#Reset password on Login Popup
${RESET_PASS} =  //div[@data-test-id="touchableErrorMessage"]/span[2]/button