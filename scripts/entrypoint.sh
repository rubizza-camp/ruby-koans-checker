#!/usr/bin/env bash

echo "----- RUNNING RAKE -----"
bundle exec rake

echo "----- RUNNING RUBOKOP -----"
bundle exec rubocop koans

echo "----- RUNNING REEK -----"
bundle exec reek koans

