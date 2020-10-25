Feature:  As user, I want to be able to create new cars

  @add_car
  Scenario: 1. add some car
    Given user is on the login page
    And user logs in as a "store manager"
    And user navigates to "Fleet" and "Vehicle"
    And user click on create car button
    When user adds new vehicle information
        | License Plate | SDET |
        | Model Year    | 2021 |