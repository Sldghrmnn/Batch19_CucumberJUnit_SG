Feature: Education Tests

  @wip
  Scenario: Add Education Form Labels Check
    Given The user is on the login page
    When The user logins with "sld@gmail.com" and "Almanya2018!"
    Then The user should be able to see "Zelda" on dashboard page
    When The user clicks on tab: "Zelda" and module: "My Profile"
    Then The user should be able to see related page title with two parts: "User Profile"
    When The user navigates user profile tab menu with: "Add Education"
    Then The user should be able to verify add education form labels with following list
      | School or Bootcamp *    |
      | Degree or Certificate * |
      | Study                   |
      | From Date               |
      | To Date                 |
      | Program Description     |