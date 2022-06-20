Feature: Search

    As a user I want to be able to search for an article.

    Background: User navigates to home page
    Given a user is at the home page

    Scenario: Search for a specific topic
    When the user enters "covid" into the search bar
    Then links related with "covid" are shown
