Feature: Hear Shout

  Personae
  - Lucy the listener
  - Sean the shouter

  Rules
  - Shouts only heard by people within 1000ft from shouter
  - Shouts can not be longer than 140 characters

  Scenario: Lucy is not in the zone
    Given Lucy is 1001ft away from Sean
    When Sean shouts "Anyone here?"
    Then Lucy should not hear Sean's shout

  Scenario: Lucy is in the zone
    Given Lucy is 500ft away from Sean
    When Sean shouts "Hi everyone!"
    Then Lucy should hear Sean's shout
