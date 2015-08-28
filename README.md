# project_2_tournament
Udacity Full Stack Nanodegree Project 2

#README

#Description: 
A Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament.

#Files:
tournament.py - Contains module code. Run to execute module.
tournament.sql - database schema.
tournament_test.py - Unit tests that test the functions contained in tournament.py

#How to Run
Create the tournament database
'''
vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql
psql (9.3.5)
Type "help" for help.

vagrant=> CREATE DATABASE tournament;
CREATE DATABASE
vagrant=> \q
'''
