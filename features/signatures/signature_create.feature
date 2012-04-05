Feature: Edit User
  As a registered user of the website
  I want to add signatures to petitions
  so I can change the signature counts and support the petition

    Scenario: I sign in and add a signature
      Given I am logged in
      When I sign a petition
      Then the petition count should change
