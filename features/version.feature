Feature: Version verifier
 In order to not forget to have the latest version
 As programmer
 I want to update the latest version
 So I make sure I publish to ruby gems

 Scenario: Check the version
  When my aplication has loaded
  Then the version should be "0.9.0"
