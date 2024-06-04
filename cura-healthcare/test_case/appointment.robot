*** Settings ***
Library    SeleniumLibrary
Library    ../util.py
Resource    ../resources/keywords/login_keywords.robot
Resource    ../resources/keywords/appointment_keywords.robot


Suite Setup    Open Browser    browser=chrome    url=https://katalon-demo-cura.herokuapp.com/profile.php#login


*** Test Cases ***
# Test to verify Dropdown values of facility 
#     Given User should login Successfully
#     And User clicks on Facility dropdown
#     Then Verify dropdown values

Test to verify creating a new appointment 
    Given User should login Successfully
    And User selects a dropdown "Seoul CURA Healthcare Center"
    And User selects todys date
    Then Click on Submit

Test to verify the appointment data created successfully in history section 
    Given User goes to history section 
    And Appointment created should be displayed
    Then User should be logged out 