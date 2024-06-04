*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/login_page_loactors.py
Variables    ../locators/appointment_locators.py
Variables    ../../resources/data.py


*** Keywords ***
User is on Login page
    ${PageTitle}=  Get Title
    Should Be Equal As Strings    ${PageTitle}    CURA Healthcare Service    strip_spaces=true

Page should have username pwd and login button
    Element Should Be Visible    locator=${loginUsername}
    Element Should Be Visible    locator=${loginPwd}
    Element Should Be Visible    locator=${loginbtn}

Enter invalid username
    Input Text    locator=${loginUsername}    text=${invalid_username}

Enter Password
    Input Text    ${loginPwd}    ${valid_pwd}

Error Message should be displayed
    ${error} =  Get Text    locator=${error_message}
    Should Be Equal As Strings    ${error}    Login failed! Please ensure the username and password are valid.    strip_spaces=true

Enter valid username
    Input Text    locator=${loginUsername}    text=${validusername}

Enter invalid Password
    Input Text    ${loginPwd}    ${invalid_pwd}

User is on appointment creation page
    Element Should Be Visible    ${facility}


User should login Successfully 
    Enter valid username
    Enter Password
    Click Button    ${loginbtn}

User Logs out
    Click Element    ${sidebar}
    Click Element    ${logout}

User should be logged out
    Element Should Be Visible    locator={"id:btn-make-appointment"}
    