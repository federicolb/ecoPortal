Feature: Filter By Topic

    As a user I want to be able to filter stories by topic.

    Background: User navigates to home page
        Given a user is at the home page

    Scenario Outline: Filter stories using navbar links
        When the user clicks <link> link
        Then the <page> page is shown

        Examples:
            | link             | page                   |
            | BIZ & IT         | information-technology |
            | TECH             | gadgets                |
            | SCIENCE          | science                |
            | POLICY           | tech-policy            |
            | CARS             | cars                   |
            | GAMING & CULTURE | gaming                 |
            | STORE            | store                  |
            | FORUMS           | civis                  |


    Scenario Outline: Filter stories using menu links
        When the user opens the menu
        And the user clicks <link> menu's link
        Then the <page> page is shown

        Examples:
            | link             | page                   |
            | BIZ & IT         | information-technology |
            | TECH             | gadgets                |
            | SCIENCE          | science                |
            | POLICY           | tech-policy            |
            | CARS             | cars                   |
            | GAMING & CULTURE | gaming                 |
            | STORE            | store                  |
            | FORUMS           | civis                  |