Feature: Merge Articles
  As a blog administrator
  In order to consolidate similar topics and views
  I want to be able to merge similar articles

Background: articles to be merged

  Scenario: An admin should be able to merge articles
  	Given the blog is set up
    And I am logged into the admin panel
    And I follow "New Article"
    And I fill in "article_title" with "Article 1"
    And I fill in "article__body_and_extended_editor" with "yayayayayaya"
  