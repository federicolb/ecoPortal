Feature: Sing Up

    As a user I want to be able to create an account for the site.

    Background: User navigates to home page
        Given a user is at the "Sign Up" page


    Scenario: Sign Up
        When the user signs up:
            | username   | email                | password         |
            | valid-user | valid-user@email.com | valid_Password.1 |
        Then the account is created


    Scenario: Username already exists
        Given the following account is created:
            | username   | email                | password         |
            | valid-user | valid-user@email.com | valid_Password.1 |
        When the user signs up:
            | username   | email                | password         |
            | valid-user | valid-user@email.com | valid_Password.1 |
        Then the account is not created
        And "username" message is shown


    Scenario: Invalid Password
        When the user signs up:
            | username   | email                | password        |
            | valid-user | valid-user@email.com | invalidpassword |
        Then the account is not created
        And "password" message is shown


    Scenario: Invalid Email
        When the user signs up with invalid email <email>:
            | username | password         |
            | <user>   | valid_Password.1 |
        Then the account is not created
        And "email" message is shown

        Examples:
            | email            |
            | invalid1         |
            | invalid@email    |
            | stillinvalid.com |
