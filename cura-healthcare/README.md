# Healthcare- appointment-robotframework
This is Project to Automate Various scenarios of Cura Health care services which is used to make various appointments
Website Link : https://katalon-demo-cura.herokuapp.com/profile.php#login

**Test cases**
https://docs.google.com/spreadsheets/d/1YE1v637yfYH-V9qtf1LG0HcGLkJ2wPtoPAWHpHZQoHY/edit#gid=0

# Project Folder Structure

This Robot Framework project is organized as follows:

### Root Directory
The main folder where the project resides. It contains:
- **README.md**: This document, explaining the project's purpose, setup, and folder structure.
- **requirements.txt** or **Pipfile**: Lists the Python dependencies required for the project.
- **.gitignore**: Specifies which files and folders to ignore in version control.
- **robot.yaml**: (optional) Configuration file for Robot Framework settings.

### `tests` Folder
This folder contains the test cases for the project. Tests are written in `.robot` files and might be organized by:
- **Feature**: Tests grouped by specific application features.
- **Type**: Separation of functional, integration, or regression tests.
- **Suite**: Grouping of related tests into larger test suites.

### `resources` Folder
Shared resources and data used across multiple tests, including:
- **Keyword files**: Reusable keywords or common test steps.
- **Test data**: Data files such as CSV, Excel, or JSON used in tests.
- **Page objects**: If using the Page Object Model (POM), this might contain objects representing application pages.
  
