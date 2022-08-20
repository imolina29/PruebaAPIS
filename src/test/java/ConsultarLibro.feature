Feature:  Get API Demo

  Background:
    *  url 'https://restful-booker.herokuapp.com/booking/'
    * header Accept = 'application/json'

  Scenario: GetBooking
    Given url 'https://restful-booker.herokuapp.com/booking/4110'
    When method GET
    Then status 200
    And print response

