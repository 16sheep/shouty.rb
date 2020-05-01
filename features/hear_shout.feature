Feature: Hear Shout

  Shouts have a range up to 1000m

  Scenario: In range shout is heard
    Given Mary is at 0, 0
    And Sean is at 0, 900
    When Sean shouts
    Then Mary should hear Sean

  Scenario: Out of range shout is not heard
    Given Mary is at 0, 0
    And Sean is at 800, 800
    When Sean shouts
    Then Mary should hear nothing
