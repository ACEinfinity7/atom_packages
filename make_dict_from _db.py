import sqlite3
import csv

table_proposers = 'proposers','(id, proposer, accepter, preference)'
table_accepters = 'accepters','(id, accepter, proposer, preference)'
sql_file = '4_couple_test_insert.sql'
proposer_csv = '4_person_proposers.csv'
accepter_csv = '4_person_accepter.csv'

def read_in_preference(proposer_csv):
    order_list = list()
    with open(proposer_csv,'r') as p:
        proposer_reader = csv.reader(p)
        for row in proposer_reader:
            proposer = row[0]
            accepter_order = row[1:]
            order_list.append((proposer,accepter_order))
    return order_list


def make_sql_lines(order_list, table_name, sql_file):
    id = 1
    with open(sql_file, 'a') as f:
        for entry in order_list:
            for preference in entry[1]:
                f.write(f'INSERT INTO {table_name[0]} {table_name[1]} VALUES ({id}, {entry[0]}, {preference}, {entry[1].index(preference)});\n')
                id +=1



make_sql_lines(read_in_preference(proposer_csv), table_proposers, sql_file)
make_sql_lines(read_in_preference(accepter_csv), table_accepters, sql_file)
