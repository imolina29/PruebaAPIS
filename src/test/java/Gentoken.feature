Feature: Post API Demo

  Background:
    * url 'https://restful-booker.herokuapp.com/auth'
    * header Accept = 'Content-Type: application/json'
    * def expectedOutput = read("response1.json")

  Scenario: Generar token
    Given url 'https://restful-booker.herokuapp.com/auth'
    And request expectedOutput
    When method post
    Then status 200
    And print response
