Feature: Create a new Todo with parameterized data

  @postWithParameters
  Scenario Outline: Create a new todo item with different values
    Given url 'https://jsonplaceholder.typicode.com/todos'
    And request
    """
    {
      "userId": <userId>,
      "title": <title>,
      "completed": <completed>

    }
    """
    When method POST
    Then status 201
    And match response.userId == <userId>
    And match response.title == <title>
    And match response.completed == <completed>

    * print response

    Examples:
      | userId | title              | completed |
      | 1      | "Aysun Aytaç"      | false     |
      | 2      | "Arif Gürsoy"      | true      |
      | 3      | "Burak Ordin"      | false     |
      | 4      | "Alpay Kırlangıç"  | true      |


    @postWithParametersAndNewField
    Scenario: Create a new todo with an additional "okul" field
      Given url 'https://jsonplaceholder.typicode.com/todos'
      And request
    """
    {
      "userId": 1,
      "title": "Damla Gençer",
      "completed": false,
      "okul": "Ege Üniversitesi",

    }
    """
      When method POST
      Then status 201
      And match response.userId == 1
      And match response.title == "Damla Gençer"
      And match response.completed == false
      * print response