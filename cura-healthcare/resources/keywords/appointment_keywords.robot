*** Settings ***
Library    SeleniumLibrary
Library    ../util.py
Library           DateTime
Variables    ../locators/login_page_loactors.py
Variables    ../locators/appointment_locators.py
Variables    ../../resources/data.py


*** Variables ***



*** Keywords ***
User clicks on Facility dropdown
    Click Element    ${facility}
    

Verify dropdown values
    
    ${facility_list}=    Create List    Tokyo CURA Healthcare Center    Hongkong CURA Healthcare Center    Seoul CURA Healthcare Center
   FOR    ${list_val}    IN    @{facility_list}
       Log    ${list_val}
       
        ${text}=    Select From List By Value    id:combo_facility    ${list_val} 
       Should Be Equal As Strings    ${text}    ${list_val}    ignore_case=${True}
   END


User selects a dropdown "${select_value}"
    Select From List By Value    id:combo_facility    ${select_value}
    ${need_fac}=    Set Global Variable    ${select_value}

User selects todys date
    ${date}=    Get Current Date      UTC    result_format=%d/%m/%Y    exclude_millis=yes
    
    Log      ${date}      console=yes
    Input Text    locator=${date_sel}    text=${date}

Click on Submit
    Click Button    ${book_aapt}

User goes to history section
    Click Element    ${sidebar}
    Click Element    ${history}

Appointment created should be displayed
    Element Should Be Visible    ${history_facility}
    ${curre_facility_val}=   Get Text    locator=${history_facility}
    Log    ${curre_facility_val}
    Should Be Equal As Strings    ${curre_facility_val}    ${need_fac}
    