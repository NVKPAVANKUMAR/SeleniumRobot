__author__ = "Pavan"

# LoginPage Elements
usr_input_name = 'userName'
pwd_input_name = 'password'
signIn_button_name = 'login'
signOn_link_xpath = "//a[.='SIGN-ON']"
enter_your_info_xpath = "//*[contains(text(),'Enter your user information')]"
register_link_xpath = "//a[.='REGISTER']"
flights_xpath = '//*[contains(text(),"Flights")]'

# SignOnPage Elements
registration_link_xpath = "//a[contains(text(),'registration')]"

# Registration Page Elements
fname_input_name = 'firstName'
lname_input_name = 'lastName'
phone_input_name = 'phone'
address_input_name = "address1"
city_input_name = "city"
state_input_name = "state"
pcode_input_name = "postalCode"
country_input_name = "country"
usn_input_name = "email"
pass_input_name = "password"
cpass_input_name = "confirmPassword"
submit_button_name = "register"
submit_button_xpath = "//*[@name='register']"
email_input_name = "userName"
registration_complete_xpath = "//*[contains(text(),'Thank you')]"
userId_created_xpath = "//*[contains(text(),'Your user name is')]"

# Flight Booking Page Elements
oneway_xpath = '//*[@value="oneway"]'
passenger_x = '//*[@name="passCount"]'
from_x = '//*[@name="fromPort"]'
to_x = '//*[@name="toPort"]'
return_date = '//*[@name="toDay"]'
preference_class_x = '//*[@value="Business"]'
airline_x = '//*[@name="airline"]'
find_flights_button = '//*[@name="findFlights"]'

# Flight authorization Page Elements
oneway_flight_xpath = '//*[contains(text(),"Blue Skies Airlines 361")]//preceding::input[@type="radio"][1]'
continue_xpath = '//*[@name="reserveFlights"]'
final_submit_xpath = '//*[@name="buyFlights"]'

# Flight Confirmation Page Elements
confirmation_xpath = '//*[contains(text(),"itinerary")]'
bookedNo_xpath = '//*[contains(text(),"# ")]'

