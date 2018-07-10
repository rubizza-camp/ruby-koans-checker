#!/usr/bin/env bash

echo "----- CHANGES IN KOANS -----"
echo
colordiff origin-koans koans

echo
echo "----- RUNNING RAKE -----"
echo
bundle exec rake

echo
echo "----- RUNNING RUBOKOP -----"
echo
bundle exec rubocop koans

echo
echo "----- RUNNING REEK -----"
echo
bundle exec reek koans

