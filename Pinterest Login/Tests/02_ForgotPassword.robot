*** Settings ***
Resource  ../Resource/Keywords/KeywordsCollection.robot

*** Test Cases ***
Verify Login Page
    GIVEN Verify Login Button
    WHEN Click Homepage Login button
    THEN Verify Login Popup Page
    AND Verify Login Page Contents

Verify Forgot Password Link
    GIVEN Verify if Forgot Password is displayed
    WHEN Click "Forgot Your Password?" Link
    THEN Verify Forgot Pasword Page Title
    AND Verify if search function is visible
    AND Go Back to Homepage