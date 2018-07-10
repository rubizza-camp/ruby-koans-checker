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
echo "----- (all files except neo.rb) -----"
echo
find koans -type f -not -name 'neo.rb' | xargs reek

