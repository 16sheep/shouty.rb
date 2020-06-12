Feature: Feature file change

  Whispers have a range up to 10m

  Scenario: In range whisper is heard
    Given Lucy is at 0, 0
    And Sean is at 0, 9
    When Sean whispers
    Then Lucy should hear Sean
