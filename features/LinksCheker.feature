Feature: The ThinkMobiles login page

  Scenario Outline: As a user, I chek all links

    Given I am on the login page
    When I click on <link>
    Then I should see the new page with <title>

    Examples:
      | link                          | title                         |
      | "Login with Google account"   | Вхід – облікові записи Google |
      | "Login with Facebook account" | Увійти у Facebook             |
      | "Login with Linkedin account" | LinkedIn Login, Sign in       |
      | "Login with Github account"   | Sign in to GitHub · GitHub    |

