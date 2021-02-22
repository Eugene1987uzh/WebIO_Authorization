Feature: The Internet Guinea Pig Website
  Test scenario from box
  Scenario Outline: As a user, I can log into the secure area

    Given I am on the login page
    When I login with <email> and <password>
    Then I should see the main page with all posts

    Examples:
      | email                 | password  |
      | dantes.8ua8@gmail.com | lolyP0P11 |
