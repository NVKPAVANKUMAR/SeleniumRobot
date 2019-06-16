*** Settings ***
Documentation  Testing MercuryTours Website
Library  Selenium2Library
Library  BuiltIn


*** Variables ***
${URL}  http://newtours.demoaut.com/
${title}  Welcome: Mercury Tours
${timeout}  3s


*** Keywords ***
Open Mercury Website in Chrome and Maximize
    open browser  url=${URL}  browser=chrome
    maximize browser window
    log to console  Navigated to Website Successfully
Verify the Home page title
    title should be  ${title}
    log to console  Home Page Title Verified
Click on Sign-On Link
    click element  name=login
    log to console  Clicked on SignOn Link Successfully
Close Browser Window
    close browser


*** Test Cases ***
TestCase1: Navigating Mercury Webpage
    [Tags]  DEBUG
    [Setup]
        Open Mercury Website in Chrome and Maximize
        Verify the Home page title
        sleep  ${timeout}
        Click on Sign-On Link
    [Teardown]
        Close Browser Window




