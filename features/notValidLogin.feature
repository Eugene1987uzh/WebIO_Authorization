Feature: The ThinkMobiles Website

  Scenario Outline: I can't log into the website with not valid data

    Given I am on the login page
    When I enter not valid  <email> or <password>
    Then User see <message> error

    Examples:
      | email                 | password | message                                          |
      | dantes.8ua8@gmail.com | 1def     | The password field must be at least 6 characters |
      | d1def                 | frd2kmr  | The email field must be a valid email            |
      |                       | frd2kmr  | The email field is required                      |
      | dantes.8ua8@gmail.com | itsEmpty  | The password field is required                   |
                         


