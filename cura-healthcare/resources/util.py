from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver import ChromeOptions , Chrome
# import requests as request
import time
from selenium.webdriver.support.ui import Select


opts = webdriver.ChromeOptions()
opts.add_experimental_option("detach", True)


from robot.libraries.BuiltIn import BuiltIn

driver = BuiltIn().get_library_instance('SeleniumLibrary')
title = driver.get_title()


def verify_dropdown():
    sel_drop = driver.find_element(By.ID, "combo_facility")
    print(sel_drop)

    # for i in range(0, len(sel_drop)):
        