Feature: Post API

  Background:
    * url 'https://restful-booker.herokuapp.com/booking/'
    * header Content-Type = 'application/json'
    * header Cookie = 'token=b8eb3d000a9b893'

  Scenario: Eliminar un libro
    Given url 'https://restful-booker.herokuapp.com/booking/4281'
    When method delete
    Then status 201
    And print response