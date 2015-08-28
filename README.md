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

    vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql
    psql (9.3.5)
    Type "help" for help.
    vagrant=> CREATE DATABASE tournament;
    CREATE DATABASE
    vagrant=> \q

Load schema from tournament.sql

    vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql tournament < tournament.sql

Run tournament_test.py

    vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py 
    1. Old matches can be deleted.
    2. Player records can be deleted.
    3. After deleting, countPlayers() returns zero.
    4. After registering a player, countPlayers() returns 1.
    5. Players can be registered and deleted.
    6. Newly registered players appear in the standings with no matches.
    7. After a match, players have updated standings.
    8. After one match, players with one win are paired.
    Success!  All tests pass!
