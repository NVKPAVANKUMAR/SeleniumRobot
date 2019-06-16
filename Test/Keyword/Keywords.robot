*** Settings ***
Documentation   Testing MecuryTours Website Keywords
Library          Selenium2Library
Library          BuiltIn
Variables        ../Locators/Elements.py
Variables        ../Variable/Variables.py


*** Keywords ***
#Open Mercury Website in Chrome and Maximize
#    open browser  url=${URL}  browser=chrome
#    maximize browser window
#    # Log Browser is Maximized
#    log to console  Browser is Maximized
#
#Verify the Home page title
#    title should be  ${title}
#    log to console  Home Page Title Verified

Click on Sign-On Link
    click element  ${signOn_link_xpath}
    log to console  Clicked on Signon link successfully

Verify SignOn Page title
    ${windowTitle} =  get title
    should be equal  ${windowTitle}  ${signOn_Page_Title}
    log to console  Navigated to :${windowTitle}

Check if Registration link is available
    ${a} =  get element attribute  xpath=${registration_link_xpath}  href
    log to console  Href attribite found  :${a}

Check header id successfully displaying
    element should be visible  ${signOn_link_xpath}

Enter Invalid UserName
    input text  ${usr_input_name}  ${Username}

Enter Invalid Password
    input password  ${pwd_input_name}  ${Password}

Click on Submit
    click button  ${signIn_button_name}

Click on Register Link
    click element  ${register_link_xpath}

Verify Registration Page
     element should be visible  ${submit_button_xpath}
Provide user details
      input text  ${fname_input_name}  ${U_FirstName}
      input text  ${lname_input_name}  ${U_LastName}
      input text  ${phone_input_name}  ${U_phone}
      input text  ${email_input_name}    ${U_userID}
      click element  ${country_input_name}
      select from list by label  ${country_input_name}  ${U_country}
      input text  ${usn_input_name}  ${U_userName}
      input password  ${pass_input_name}  ${U_password}
      input password  ${cpass_input_name}  ${U_confirmPassword}
      log to console  All input data entered

Click on Submit registration
      click element  ${submit_button_xpath}
      log to console  Submitted Registration

Check Post registration page
       element should be visible  ${registration_complete_xpath}

UserID should be created successfully
        element should be visible  ${userId_created_xpath}
        ${a}=  get text  ${userId_created_xpath}
        log to console  ${a}

Goto Flight Booking section
        click element  ${flights_xpath}
        sleep  2s

Check Booking Page
        ${windowTitle}=  get title
        should be equal  ${windowTitle}  Find a Flight: Mercury Tours:
        log to console  ${windowTitle}

Provide user necessary details and continue
        click element  ${oneway_xpath}
        click element  ${passenger_x}
        select from list by label  ${passenger_x}  1
        click element  ${from_x}
        select from list by label  ${from_x}  London
        click element  ${to_x}
        select from list by label  ${to_x}  Paris
        click element  ${preference_class_x}
        click element  ${find_flights_button}
        sleep  2s

Select Available flights and continue
        ${windowTitle}=  get title
        should be equal  ${windowTitle}  Select a Flight: Mercury Tours
        log to console  Navigate to :${windowTitle}
        click element  ${oneway_flight_xpath}
        click element  ${continue_xpath}

Provide payment details and secure booking
        ${windowTitle}=  get title
        should be equal  ${windowTitle}  Book a Flight: Mercury Tours
        log to console  Navigate to :${windowTitle}
        click element  ${final_submit_xpath}

Check confirmation page and booking ID
        sleep  2s
        ${windowTitle}=  get title
        should be equal  ${windowTitle}  Flight Confirmation: Mercury Tours
        log to console  Navigated to :${windowTitle}
        ${b}=  get text  ${confirmation_xpath}
        log to console  Displaying:${b}
        ${c}=  get element attribute  ${bookedNo_xpath}  innerText
        log to console  FlightConfirmationNo:${c}
        log to console  Flight Booked Successfully
