#!/usr/bin/env bats

source bashlets web::api::isup

@test "web/api/isup: check whether github.com is up" {
  $(bash$$ isup check)
  [[ $status -eq 0 ]]
}
