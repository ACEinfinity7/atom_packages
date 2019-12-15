#!/bin/bash
sqlite3 stable_marriage.db < stable_marriage_setup.sql
sqlite3 stable_marriage.db < 4_couple_test_insert.sql
sqlite3 stable_marriage.db < 4_couple_test_select.sql
