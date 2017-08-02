Feature: Page content for admin
In order to create a page content type
As an admin
I should be able to add fileds


@api @test
Scenario: Successfully visit add node
Given I am logged in as an "Administrator"
When I go to "/node/add/page"
 Then I should see "Title"


 @api
Scenario: Successfully publish a page
Given I am logged in as an "Administrator"
When I go to "/node/add/page"
And I fill in "Title" with "Test Page"
And I press "Save and publish"
Then I should see "Basic Page Test Page has been created."


@api
Scenario: Successfully visit add node
Given I am logged in as an "Administrator"
When I go to "/node/add/page"
And I fill in "Title" with "Test Page"
And I select "Save as unpublished" from "dropbutton-widget dropbutton"
Then I should see "Basic Page Test Page has been created."

