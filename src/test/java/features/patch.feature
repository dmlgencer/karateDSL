Feature: Update user with authentication

  @patchTodos
  Scenario: Patch user with auth token
    Given url 'https://jsonplaceholder.typicode.com/todos/3'
    And request
    """
    {

      "title": "yüksek lisans tezi",
      "completed": true
     }
    """
    When method PATCH
    Then status 200
    And match response.title == "yüksek lisans tezi"
    And match response.completed == true
    * print response