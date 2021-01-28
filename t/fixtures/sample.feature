Feature: Testing folding
  This should add fold markers at the Features

  Background:
    This is in the background block

  Scenario: First Feature
    When I Foo
    Then I Bar

  Scenario: Second Feature
    When I Foo a second time
    Then I Baz

  Scenario Outline: eating cucumbers
    Given there are <start> cucumbers
    When I eat <eat> cucumbers
    Then I should have <left> cucumbers

    Examples:
      | start | eat | left |
      |    12 |   5 |    7 |
      |    20 |   5 |   15 |
