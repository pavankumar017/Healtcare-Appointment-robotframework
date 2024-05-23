# Healthcare Appointment Automation Project

This project uses Robot Framework for automating healthcare appointment-related test cases. The folder structure is organized to ensure clarity, reusability, and maintainability.

## Folder Structure

### Root Directory
The main folder where the project resides. It contains:
- **README.md**: This document, explaining the project's purpose, setup, and folder structure.
- **requirements.txt**: Lists the Python dependencies required for the project.
- **.gitignore**: Specifies which files and folders to ignore in version control.

### `tests` Folder
This folder contains the test cases for different features of the healthcare appointment application. Each feature has its own `.robot` file:
- **testcase.robot**: Contains test cases specific to each feature of the application. Each file is named according to the feature it tests.

### `resources` Folder
Shared resources used across multiple test cases, organized into subfolders and files:
- **`keywords` Folder**: Contains reusable keyword files written in Robot Framework syntax.
- **`locators` Folder**: Contains locator files that define how to find elements on the web pages.
- **`data.py`**: A Python file that contains test data used across various tests.

### `libs` Folder
Custom Python libraries or modules that extend Robot Framework capabilities. This might include:
- **Custom keywords**: Python functions/classes implementing complex keywords.
- **Utility functions**: Helper functions or utilities shared across tests.

### `output` Folder
Stores the output from test runs, including:
- **Logs**: Detailed logs from test execution.
- **Reports**: Test reports in HTML, XML, or other formats.
- **Screenshots**: Images captured during test execution.

### `config` Folder
This folder contains configuration files, including:
- **Environment-specific configurations**: Settings for development, staging, production, etc.
- **Global settings**: General configurations for Robot Framework or related tools.

---

## Getting Started

### Prerequisites
- Python 3.x
- Robot Framework
- SeleniumLibrary

### Installation
1. Clone the repository:
    ```sh
    git clone https://github.com/pavankumar017/Healtcare-Appointment-robotframework.git
    ```
2. Navigate to the project directory:
    ```sh
    cd Healtcare-Appointment-robotframework
    ```

### Running Tests
To execute a specific test case, run the following command:
```sh
python -m robot cura-healthcare/test_case/login.robot
    Replace cura-healthcare/test_case/login.robot with the path to the specific test case you want to run.
---


 -Test Cases
    The cases are documented and maintained in a Google Sheets file. You can find the detailed test cases here.- https://docs.google.com/spreadsheets/d/1YE1v637yfYH-V9qtf1LG0HcGLkJ2wPtoPAWHpHZQoHY/edit#gid=0

Contribution
Contributions are welcome! Please create a pull request with a detailed description of your changes.
