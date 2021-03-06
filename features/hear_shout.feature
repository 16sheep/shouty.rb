Feature: Hear Shout

  Shouts have a range up to 1000m

  Scenario: In range shout is heard
    Given Lucy is at 0, 0
    And Sean is at 0, 900
    When Sean shouts
    Then Lucy should hear Sean

  Scenario: Is hout is not heard
    Given Lucy is at 0, 0
    And Sean is at 800, 800
    When Sean shouts
    Then Lucy should hear nothing
  
  Scenario: Is hout is not heard v2
    Given Lucy is at 0, 0
    And Sean is at 800, 800
    When Sean shouts
    Then Lucy should hear nothing
