# ------------------------- follow for the sql results ---------------------

# install sqlite db on mac using below command in terminal
brew install sqlite

# create and enter into database named xyz_db
sqlite3 xyz_db.db

# create table using the tables-creation
.read  eqube/tables-creation.sql

# insert items
INSERT INTO items (item_name) VALUES ('x'), ('y'), ('z');

# insert customers
INSERT INTO customers (customer_id, age) VALUES (1, 21), (2, 23), (3, 35);

# similerly insert remaining data and run the query.sql file to get the result
# -----------------------------------------------------------------------------

# --------------------------- follow for the python results -------------------
run query-python.py file to get and save results to the csv file with ';' seperator