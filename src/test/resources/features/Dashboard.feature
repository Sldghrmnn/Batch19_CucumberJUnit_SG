@regression
Feature: Dashboard Tests

  @smoke @paralel
  Scenario: Developers Page Test
    Given The user is on the login page
    When The user enters Zelda's credentials
    Then The user should be able to see dashboard page
    When The user clicks on Developers link
    Then The user should be able to see developers page title


  Scenario: Developers Page Test - Cucumber Parameters
    Given The user is on the login page
    When The user logins with "sld@gmail.com" and "Almanya2018!"
    Then The user should be able to see "Zelda" on dashboard page
    When The user clicks on tab: "JavaScript" and module: "Draggable"
    Then The user should be able to see related page title with three parts: "Draggable"
    When The user clicks on tab: "Developers" and module: ""
    Then The user should be able to see related page title with two parts: "Developers"


  Scenario: Dashboard Tabs Check
    Given The user is on the login page
    When The user logins with "sld@gmail.com" and "Almanya2018!"
    Then The user should be able to see "Zelda" on dashboard page
    And The user should verify the dashboard tabs with follows
      | Dashboard  |
      | Developers |
      | Components |
      | Forms      |
      | JavaScript |
      | Zelda      |






