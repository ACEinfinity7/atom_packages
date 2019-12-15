hub
DROP TABLE IF EXISTS proposers_pref;

CREATE TABLE proposers_pref(
	id INTEGER NOT NULL UNIQUE PRIMARY KEY,
	proposer_id INTEGER,
	accepter_id INTEGER,
	preference INTEGER,
	FOREIGN KEY (proposer_id) REFERENCES proposer_info(proposer_id),
	FOREIGN KEY (accepter_id) REFERENCES accepter_info(accepter_id)
);

DROP TABLE IF EXISTS accepters_pref;

CREATE TABLE accepters_pref(
	id INTEGER NOT NULL UNIQUE PRIMARY KEY,
	accepter_id INTEGER,
	proposer_id INTEGER,
	preference INTEGER,
	FOREIGN KEY (proposer_id) REFERENCES proposer_info(proposer_id),
	FOREIGN KEY (accepter_id) REFERENCES accepter_info(accepter_id)
);

DROP TABLE IF EXISTS proposer_info;

CREATE TABLE proposer_info(
	proposer_id INTEGER NOT NULL PRIMARY KEY,
	f_name VARCHAR(50),
	l_name VARCHAR(50),
	age INTEGER
);
DROP TABLE IF EXISTS accepter_info;

CREATE TABLE accepter_info(
	accepter_id INTEGER NOT NULL PRIMARY KEY,
	f_name VARCHAR(50),
	l_name VARCHAR(50),
	age INTEGER
);

CREATE TABLE experiments_info(
	experiment_id INTEGER NOT NULL PRIMARY KEY,

)
