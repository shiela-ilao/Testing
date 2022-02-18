*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resource/Keywords/Common.robot
Resource  ../../../Resource/Data/ForgotPassword.Robot

*** Keywords ***
Verify Forgot Pasword Page Title
    Common.Verify Page Loaded  ${FORGOT_PASS_URL}
    element text should be  ${FORGOT_PASS_TITLE_PAGE}  Let's find your Pinterest account

Verify if search function is visible
    element should contain  ${SEARCH_FORM}  What's your email, name, or username?
    element should be visible  id:userQuery
    element attribute value should be  id:userQuery  placeholder  Search
    element should be visible  ${search_btn}