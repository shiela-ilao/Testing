*** Settings ***
Resource  ../Resource/Keywords/KeywordsCollection.robot
Resource  ../Resource/Data/HomePage.robot

*** Test Cases ***
Verify Pinterest Page
    GIVEN Begin Web Test  ${URL}  ${BROWSER}
    WHEN Verify Page Loaded  ${URL}
    THEN Verify Home Page Title