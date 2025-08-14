Feature: Login tests with scenario outline


  Scenario Outline: Pasitive Login Tests  with <username>
    Given The user is on the login page
    When The user logins with "<email>" and "<password>"
    Then The user should be able to see "<username>" on dashboard page
    Examples:
      | email                   | password     | username |
      | sld@gmail.com           | Almanya2018! | Zelda    |
      | rosa@test.com           | Test123456   | Rosa     |
      | Ramanzi@test.com        | Test123456   | Mansimmo |
      | mike@gmail.com          | mike1234     | mike     |
      | leeroyjenkins@email.com | 1234.Asdf    | Leeroy   |


  Scenario Outline: Neegative Login Tests
    Given The user is on the login page
    When The user logins with "<email>" and "<password>"
    Then The user should be able to see warning "<message>"
    Examples:
      | email            | password     | message                                     |
      | wrongaaa@aaa.com | Almanya2018! | Email address is incorrect. Please check    |
      | rosa@test.com    | Test87654    | Password address is incorrect. Please check |
      |                  | Test123456   | Please enter  your email.                   |
      | mike@gmail.com   |              | Please enter  your password!                |
      |                  |              | Please enter  your email.                   |

