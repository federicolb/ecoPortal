Feature: Sing In

    As a user I want to be able to sign in with my account.

    Background: User navigates to home page
        Given a user is at the home page
        And the following accounts are created:
            | username   | email                | password         |
            | valid-user | valid-user@email.com | valid_Password.1 |
            | old-user   | old-user@emai.com    | valid_Password.2 |
        And the following accounts are deleted:
            | username | email             | password         |
            | old-user | old-user@emai.com | valid_Password.2 |

    Scenario: Successfuly sign in
        When the user signs in:
            | usernameOrEmail      | password         |
            | valid-user           | valid_Password.1 |
            | valid-user@email.com | valid_Password.1 |
        Then the log in is successful


    Scenario Outline: Invalid user or password
        When the user enters <username> and <password> to log in
        Then the login is not successful

        Examples:
            | username     | password          |
            | valid-user   | invalid-password1 |
            | invalid-user | valid_Password.1  |
            | old-user     | valid_Password.2  |