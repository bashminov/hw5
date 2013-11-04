Feature: Merge Articles
  As a blog administrator
  In order to consolidate similar topics and views
  I want to be able to merge similar articles

Background: articles to be merged

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
  	Given the blog is set up
    And I am logged into the admin panel
    And I follow "New Article"
    And I fill in "article_title" with "Article 1"
    And I fill in "article__body_and_extended_editor" with "yayayayayaya"
    And I press "Publish"
    Then I should see "Manage articles"
  	And I should be on the admin content page
  	And I follow "New Article"
    And I fill in "article_title" with "Article 2"
    And I fill in "article__body_and_extended_editor" with "hihihihihi"
    And I press "Publish"
    Then I should see "Manage articles"
    And I should be on the admin content page
    Given I am on the root page
  	And I follow "Article 1"
  	And I fill in "comment_author" with "Pablo Nasty"
  	And I fill in "comment_email" with "pablo@nasty.com"
  	And I fill in "comment_url" with "www.pablonasty.com"
  	And I fill in "comment_body" with "comment 1"
  	And I press "comment"
  	Then I should see "1 comment"
  	When I follow "Home"
  	And I follow "Article 2"
  	And I fill in "comment_author" with "Joe Shmo"
  	And I fill in "comment_email" with "joe@shmo.com"
  	And I fill in "comment_url" with "www.joeshmo.com"
  	And I fill in "comment_body" with "comment 2"
  	And I press "comment"
  	Then I should see "1 comment"
  	When on the admin content page
  	And I follow "Article 1"
  	And I fill in "merge_with" with "4"
  	And I press "Merge"
  	Then I should see "was successful"
  	And I should not see "Article 2"
  	When I follow "Article 1"
  	Then I should see "yayayayayaya"
  	And I should see "hihihihihi"
  	When I follow "Comments"
  	Then I should see "Pablo Nasty"
  	And I should see "Joe Shmo"



  