*** Settings ***
Documentation  Testing MercuryTours Website
Library   Selenium2Library
Library   BuiltIn
Resource  ../Keyword/Keywords.robot
Resource  ../Keyword/Common.robot

*** Test Cases ***
TestCase1: Navigating Mercury Webpage
    [Documentation]  This is to verify invalid login Mercury Tours Login Page
    [Tags]  smoke
    [Setup]
        Open Mercury Website in Chrome and Maximize
        Verify the Home page title
        Click on Sign-On Link
        Verify SignOn Page title
        Check if Registration link is available
        Check header id successfully displaying
        Enter Invalid UserName
        Enter Invalid Password
        Click on Submit
        sleep  ${timeout}
       [Teardown]  Close Browser

TestCase2: User Registration in Mercury Website
    [Documentation]  This is to verify Registration flow Mercury Home Page
    [Tags]  sanity
    [Setup]
        Open Mercury Website in Chrome and Maximize
        Verify the Home page title
        Click on Register Link
        Verify Registration Page
        sleep  ${timeout}
        Provide user details
        sleep  ${timeout}
        Click on Submit registration
        Check Post registration page
        UserID should be created successfully
    [Teardown]  Close Browser


TestCase3: Booking Flight and then SignOff
    [Documentation]  This is to verify the flight booking in flow Mercury Home Page after Registration
    [Tags]  Regression
    [Setup]
        Open Mercury Website in Chrome and Maximize
        Verify the Home page title
        Click on Register Link
        sleep  ${timeout}
        Provide user details
        sleep  ${timeout}
        Click on Submit registration
        Goto Flight Booking section
        Check Booking Page
        Provide user necessary details and continue
        Select Available flights and continue
        Provide payment details and secure booking
        Check confirmation page and booking ID
    [Teardown]  Close Browser



