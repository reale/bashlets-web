#!/usr/bin/env bats

source bashlets web::api::reddit
reddit_user=robertoreale

@test "web/api/reddit: post karma for a given user" {
  result="$(bash$$ reddit get_post_karma $reddit_user)"
  [[ $result -gt 0 ]]
}

@test "web/api/reddit: comment karma for a given user" {
  result="$(bash$$ reddit get_comment_karma $reddit_user)"
  [[ $result -gt 0 ]]
}

@test "web/api/reddit: top post for a given subreddit" {
  result="$(bash$$ reddit show_top_post bash)"
  expected="https://www.reddit.com/r/bash"
  [[ $result =~ $expected ]]
}
