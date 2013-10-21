Feature: Some terse yet descriptive text of what is desired
  In order to realize a named business value
  As an explicit system actor
  I want to gain some beneficial outcome which furthers the goal

  # Any number of comments can go here
  # Comment block
  # More comments
  In fact, free text before Background/Scenarios is not parsed

  Background:
    Given there are users:
    | username | password | email                              |
    | tmp1     | pass1    | email1@example.net                 |
    | tmp2     | pass2    | reallylongemailexample@example.org |

  @tag1
  Scenario: Some determinable business situation
    Given some precondition
    And some other precondition
    When some action by the actor
    And some other action
    And yet another action
    Then some testable outcome is achieved
    And something else we can check happens too

  @site @simple @slow
  Scenario: Blog post
    Given a blog post named "Random" with:
    """
    Some Title, Eh?
    ===============
    Here is the first paragraph of my blog post.
    Lorem ipsum dolor sit amet, consectetur adipiscing
    elit.
    """
    When I visit the main page
    Then I see "Some Title"

  # Scenario Outline is the preferred form when using Examples
  Scenario Outline: Eating
    Given there are <start> cucumbers
    When I eat <eat> cucumbers
    Then I should have <left> cucumbers

    Examples:
    | start | eat | left |
    |    12 |   5 |    7 |
    |    20 |   5 |   15 |
