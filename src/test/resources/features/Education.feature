Feature: Education Tests


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

  @wip
  Scenario Outline: Filling Education Form For Different Persons <username>
    Given The user is on the login page
    When The user logins with "<email>" and "<password>"
    Then The user should be able to see "<username>" on dashboard page
    When The user clicks on tab: "<username>" and module: "My Profile"
    Then The user should be able to see related page title with two parts: "User Profile"
    When The user navigates user profile tab menu with: "Add Education"
    Then The user veriyfies that add education page is displayed
    When The user fills the education form with "<schoolName>" and "<degree>" and "<study>" and "<fromDate>" and "<toDate>" and "<desc>"
    Then The user should bu able to verify added education record with "<schoolName>"
    Then The user should be able to delete last added education record with "<schoolName>"
    Examples:
      | email                   | password     | username | schoolName | degree    | study             | fromDate | toDate   | desc          |
      | sld@gmail.com           | Almanya2018! | Zelda    | METU       | Bachelor  | Public Finance    | 11112011 | 12122012 | Hard Program  |
      | rosa@test.com           | Test123456   | Rosa     | Fenerbahce | Master    | Architecen        | 11112010 | 12122014 | Gut Program   |
      | Ramanzi@test.com        | Test123456   | Mansimmo | ITU        | PG        | Medicine          | 11112009 | 12122012 | Hard Program  |
      | mike@gmail.com          | mike1234     | mike     | Bilkent    | Doctor    | Software Engineer | 11112013 | 10122012 | Sweet Program |
      | leeroyjenkins@email.com | 1234.Asdf    | Leeroy   | Ankara     | Art       | Teacher           | 11112011 | 12122012 | Hard Program  |




