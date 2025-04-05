Feature: Create a new Todo Without Parameters

  Scenario: Create a new todo item
    Given url 'https://jsonplaceholder.typicode.com/todos'
    And request
    """
    {
      "userId": 1,
      "title": "Yeni Oluşturulan Todo",
      "completed": false
    }
    """
    When method POST
    Then status 201
    And match response.title == "Yeni Oluşturulan Todo"

    * print response