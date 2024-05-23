*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/keywords/login_keywords.robot

Suite Setup    Open Browser    browser=chrome    url=https://katalon-demo-cura.herokuapp.com/profile.php#login

*** Test Cases ***


*** Test Cases ***
Test to verify login page
    Given Open Browser    browser=chrome   url=https://katalon-demo-cura.herokuapp.com/profile.php#login
    Then User is on Login page

Test to verify fields present in login page
    Given User is on Login page
    Then Page should have username pwd and login button

Test to verify invalid user name
    Given User is on Login page
    And Enter invalid username
    And Enter Password
    And Click Button    ${loginbtn}
    Then Error Message should be displayed
    
Test to verify invalid password
    Given User is on Login page
    And Enter valid username
    And Enter invalid Password
    And Click Button    ${loginbtn}
    Then Error Message should be displayed

Test to verify successful login
    Given User is on Login page
    And Enter valid username
    And Enter Password
    And Click Button    ${loginbtn}
    Then User is on appointment creation page
