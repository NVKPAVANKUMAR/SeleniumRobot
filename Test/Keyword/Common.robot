*** Settings ***
Documentation   Testing MecuryTours Website Keywords
Library          Selenium2Library
Library          BuiltIn
Variables        ../Locators/Elements.py
Variables        ../Variable/Variables.py

*** Keywords ***
Open Mercury Website in Chrome and Maximize
    open browser  url=${URL}  browser=chrome
    maximize browser window
    # Log Browser is Maximized
    log to console  Browser is Maximized

Verify the Home page title
    title should be  ${title}
    log to console  Home Page Title Verified
