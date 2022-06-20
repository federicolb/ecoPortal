Feature: Stories

    As a user I want to see stories in the landing page and be able to read them

    Background: User is at the Home page
        Given a user is at the "Home" page


    Scenario: View stories
        Then the stories are shown


    Scenario: Navigate to a story
        When the user clicks on a story
        Then the story page is shown

    
    Scenario: View featured stories
        Then the feature stories are shown


    Scenario: Navigate to a featured story
        When the user clicks on a feaured story
        Then the feature story page is shown