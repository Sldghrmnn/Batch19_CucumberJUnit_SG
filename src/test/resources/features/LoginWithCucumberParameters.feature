@regression
Feature: Login Test with Cucumber Parameters

  Background:
    Given The user is on the login page

  Scenario: Login as Zelda - Cucumber Parameters
   # Given The user is on the login page
    When The user logins with "sld@gmail.com" and "Almanya2018!"
    Then The user should be able to see "Zelda" on dashboard page


  Scenario: Login as Rosa - Cucumber Parameters
   # Given The user is on the login page
    When The user logins with "rosa@test.com" and "Test123456"
    Then The user should be able to see "Rosa" on dashboard page


  Scenario: Login as Leeroy - Cucumber Parameters
   # Given The user is on the login page
    When The user logins with "leeroyjenkins@email.com" and "1234.Asdf"
    Then The user should be able to see "Leeroy" on dashboard page


  Scenario: Login as mike - Cucumber Parameters
   # Given The user is on the login page
    When The user logins with "mike@gmail.com" and "mike1234"
    Then The user should be able to see "mike" on dashboard page
    And The number is 4
    And The number also is 5.5
    And The number can be 2.7

    #mansimmo testi yapilacak

  Scenario: Login as Mansimmo - Cucumber Parameters
    When The user logins with "Ramanzi@test.com" and "Test123456"
    Then The user should be able to see "Mansimmo" on dashboard page


  Scenario: Login with credentials list Mansimmo
    When The user login and verify with following credentials
      | Ramanzi@test.com |
      | Test123456       |
      | Mansimmo         |


  Scenario: Login with credentials list Rosa
    When The user login and verify with following credentials
      | rosa@test.com |
      | Test123456    |
      | Rosa          |


  Scenario:  Login with credentials map rosa
    When The user login and verify with following credentials map
      | user_email | rosa@test.com |
      | password   | Test123456    |
      | user_name  | Rosa          |


  Scenario:  Login with credentials map leeroy
    When The user login and verify with following credentials map
      | user_email | leeroyjenkins@email.com |
      | password   | 1234.Asdf               |
      | user_name  | Leeroy                  |

