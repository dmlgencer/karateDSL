Feature: Read Todo Without Parameters
  @getTest
  Scenario: Get the items
    Given url 'http://universities.hipolabs.com/search?country=Turkey'
    When method GET
    Then status 200
    * print response







