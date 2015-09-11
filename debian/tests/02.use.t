#!/bin/sh

test_description="functions"

. ./sharness.sh

fixtures=../fixtures

test_expect_success "include mysql::client" "
    puppet apply -e 'include mysql::client' 2>&1
"

test_expect_success "include mysql::server" "
    puppet apply -e 'include mysql::server' 2>&1
"

test_done
