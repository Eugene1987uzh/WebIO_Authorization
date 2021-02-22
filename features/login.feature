Feature: The ThinkMobiles Website

  Scenario Outline: As a user, I can log into the website

    Given I am on the login page
    When I login with <email> and <password>
    Then I should see the main page with My profile

    Examples:
      | email                 | password  |
      | dantes.8ua8@gmail.com | lolyP0P11 |
