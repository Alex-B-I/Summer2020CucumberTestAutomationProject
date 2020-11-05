Feature:  As user, I want to be able to create new cars

  @add_car
  Scenario: 1. add some car
    Given user is on the login page
    And user logs in as a "store manager"
    And user navigates to "Fleet" and "Vehicle"
    And user clicks on create car button
    When user adds new vehicle information
        | License Plate | SDET |
        | Model Year    | 2021 |
    And user clicks on save and close button

  @add_car
  Scenario Outline: Add some car for <License Plate> and year <model year>
    Given user is on the login page
    And user logs in as a "store manager"
    And user navigates to "Fleet" and "Vehicle"
    And user clicks on create car button
    When user adds new vehicle information
      | License Plate | <License Plate> |
      | Model Year    | <model year>    |
    And user clicks on save and close button

    Examples: auto test data
      | License Plate | model year |
      | FLORIDA       | 2020       |
      | QA            | 2021       |
      | ALEX          | 2030       |
      | SDET          | 2022       |
