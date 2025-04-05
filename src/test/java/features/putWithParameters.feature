Feature: Update user information with parameters

  @putWithParameters
  Scenario Outline: Update user with dynamic ID
    Given url 'https://jsonplaceholder.typicode.com/users/<userId>'
    And request
    """
    {
      "name": "<newName>",
      "email": "<newEmail>"
    }
    """
    When method PUT
    Then status 200
    And match response.name == "<newName>"
    And match response.email == "<newEmail>"

    Examples:
      | userId | newName      | newEmail             |
      | 1      | Aysun Aytaç  |aysun@example.com    |
      | 2      | Damla Gençer  | damla@example.com      |
      | 3      | Ege Universitesi  | egeuni@test.com  |