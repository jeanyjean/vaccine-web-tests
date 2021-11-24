# E2E Tests for Vaccine Haven (Service Taker) using RobotFramework
**Project**: Vaccine Haven (Service Taker)
## Vaccine Haven API's Test Cases:
| ID | Name | Description | Result |
| :---| :---  | :--- | :--: |
| 1   | Test Home page if contain the app name and vaccine reservation  | Verify if the application name and vaccine reservation is in the Home page.   | Pass |
| 2   | Test make a new reservation successfully  | Verify if the demo user can create a new reservation successfully.   | Pass |
| 3   | Test cancel the reservation  | Verify if the demo user can cancel the reservation successfully.   | Pass |
## How to run your tests.
* Install the require packages for this project
    ```
    cmd> pip install -r requirements.txt
    ``` 
* To check that the installation was succesful
    ```
    cmd> robot --version
    ``` 
* Change directory to the folder that contain the test
    ```
    cmd> cd vaccine-web-tests
    ``` 
* To run the test
    ```
    cmd> robot test_vaccine_haven.robot
    ``` 
## Which do you think is a better framework for E2E testing of web applications or web services:  Robot Framework or Cucumber with Selenium/HTTP library and JUnit?
I think Cucumber with Selenium/HTTP library and JUnit is a better framework for E2E testing of web applications or web services because it is simpler and more user friendly to people who have little knowledge in programming language and it is easier to learn, write, and understand than Robot Framework.
##  What tutorial or online resource(s) did you find most helpful for learning Robot Framework?
* https://robotframework.org/
* https://robotframework.org/Selenium2Library/Selenium2Library.html
