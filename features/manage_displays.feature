Feature: Manage displays
  In order to keep track of displays
  A display manager
  Should be able to manage several displays
  
  Scenario: Register new display
    Given I am on the new display page
    When I fill in "Name" with "My display name"
    And I fill in "Description" with "My display description"
    And I press "Create"
    Then I should see "My display name"
    And I should see "My display description"

Scenario: Book display
    Given there are 4 available displays
    When I book a display
    Then there should be 3 available displays
	And there should be 4 displays in store

Scenario: Ship display
	Given there are 4 displays in store
	When I ship a display
	Then there should be 3 displays in store
	
Scenario: View home page without logging in
	Given I am not logged in
	When I view the home page
	Then I should see the generic home page
	
Scenario: View home page when logged in
	Given I am logged in as office manager
	When I view the home page
	Then I should see the customised home page
	
	
