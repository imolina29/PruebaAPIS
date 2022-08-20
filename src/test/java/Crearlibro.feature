Feature: Post API

  Background:
    * url 'https://restful-booker.herokuapp.com/booking/'
    * header Accept = 'application/json'
    * header Content-Type = 'application/json'
    * def expectedOutput = read("updatebook.json")

  Scenario: Crear un libro
    Given url 'https://restful-booker.herokuapp.com/booking'
    And request expectedOutput
    When method post
    Then status 200
    And print response