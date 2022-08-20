Feature: PUT API Demo
  Background:
    * url 'https://restful-booker.herokuapp.com/booking/'
    * header Accept = 'application/json'
    * header Content-Type = 'application/json'
    * header Cookie = 'token=b8eb3d000a9b893'
    * def expectedOutput = read("updatebook.json")


  Scenario: UpdateBook
    Given url 'https://restful-booker.herokuapp.com/booking/4110'
    And request expectedOutput
    When method put
    Then status 200
    And print response
