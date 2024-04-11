Feature: User registration
    Scenario: User registration with valid data
        Given the user is on the registration page
        When the user enters valid data
        And the user submits the form
        Then the user should be registered
    
    Scenario: User registration with invalid data
        Given the user is on the registration page
        When the user enters invalid data
        And the user submits the form
        Then the user should see an error message