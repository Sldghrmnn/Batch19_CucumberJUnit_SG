@regression
Feature: Login Function

  #for comment - yorum satiri

  #user story=feature
  #test case=scenario
  #test steps=Given,When,Then etc...

  @admin @smoke @wip
  Scenario: Login as Zelda
    Given The user is on the login page
    When The user enters Zelda's credentials
    Then The user should be able to see dashboard page
  @dev @smoke
  Scenario: Login as Mansimmo
    Given The user is on the login page
    When The user enters Mansimmo's credentials
    Then The user should be able to see Mansimmo's name on the dashboard page

    # class task create a senario for login test with mike
  @qa @db
  Scenario: Login as mike
    Given The user is on the login page
    When The user enters mike's credentials
    Then The user should be able to see mike's name on the dashboard page

  @qa @smoke @db
  Scenario: Login as Rosa
    Given The user is on the login page
    When The user enters Rosa's credentials
    Then The user should be able to see Rosa's name on the dashboard page

