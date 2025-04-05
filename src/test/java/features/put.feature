Feature: Update user information with PUT

  @putTest
  Scenario: Update user email and name
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    And request
    """
    {
      "name": "Damla Gençer",
      "email": "damlagençer@example.com"
    }
    """
    When method PUT
    Then status 200
    And match response.name == "Damla Gençer"
    And match response.email == "damlagençer@example.com"
    * print response