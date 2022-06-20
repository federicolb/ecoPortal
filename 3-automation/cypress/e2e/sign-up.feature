Feature: Sign Up

Scenario: User sign-up invalid email
	When I try to sign up or create a new account
	And I try to register a account with a invalid email format
	Then It returns a error message "The e-mail address you entered is invalid" on a visible place


  Scenario: visting the frontpage
    When I visit duckduckgo.com
    Then I should see a search bar
