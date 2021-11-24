*** Settings ***
Documentation    E2E Tests for the vaccine haven API web application using Robot Framework with SeleniumLibrary.
Library          SeleniumLibrary
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://vaccine-haven.herokuapp.com/
${BROWSER}      chrome
${CITIZEN_ID}    9621054558165
${SITE}    OGYHSite
${VACCINE}    Astra


*** Test Cases ***
Test Home page if contain the app name and vaccine reservation
	Open Browser to Home page
    Check if the app name is in Home page
    Check if the vaccine reservation is in Home page
Test make a new reservation successfully
    Go to Home page
    Click Reservation button
    Input information
    Click Submit link
    Check reservation
Test cancel the reservation
    Go to Home page
    Click My Info page
    Cancel Reservation


*** Keywords ***
# Test Home page if contain the app name and vaccine reservation
Open Browser to Home page
    Open Browser    ${URL}    ${BROWSER}
Check if the app name is in Home page
    Page Should Contain   Vaccine Haven
    Page Should Contain Element    xpath:/html/body/div[2]/div/div[1]/div[1]/div[1]/a
    Click Element   xpath:/html/body/div[2]/div/div[1]/div[1]/div[1]/a
Check if the vaccine reservation is in Home page
    Page Should Contain   Vaccine Reservation
    Page Should Contain Element    xpath:/html/body/div[2]/div/div[2]/section[2]/div/div/div/div/div[2]/a/button
    Click Element   xpath:/html/body/div[2]/div/div[2]/section[2]/div/div/div/div/div[2]/a/button
# Test make a new reservation successfully
Go to Home page
    Click Element   xpath:/html/body/div[2]/div/div[1]/div[1]/div[1]/a
Click Reservation button
    Click Button   xpath:/html/body/div[2]/div/div[2]/section[2]/div/div/div/div/div[2]/a/button
Input information
    Input Text    name:citizen_id    ${CITIZEN_ID}
    click Element   xpath=//select[@name="site_name"]
    wait until element is visible   xpath=//option[contains(text(),'${SITE}')]
    click Element   xpath=//option[contains(text(),'${SITE}')]
    click Element   xpath=//select[@name="vaccine_name"]
    wait until element is visible   xpath=//option[contains(text(),'${VACCINE}')]
    click Element   xpath=//option[contains(text(),'${VACCINE}')]
Click Submit link
    Click Button   Submit
Check reservation
    Click Element    xpath:/html/body/div[2]/div/div[1]/div[2]/div/div[1]/a
    Input Text    name:citizen_id    ${CITIZEN_ID}
    Click Button   Submit
    Wait Until Page Contains    User information:
    Page Should Contain   ${VACCINE}
    Page Should Contain   ${SITE}
# Test cancel the reservation
Click My Info page
    Click Element    xpath:/html/body/div[2]/div/div[1]/div[2]/div/div[1]/a
Cancel Reservation
    Input Text    name:citizen_id    ${CITIZEN_ID}
    Click Button   Submit
    Wait Until Page Contains    User information:
    Click Button   Cancel