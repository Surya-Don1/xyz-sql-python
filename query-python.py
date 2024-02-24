#import the pandas and sqlite3 modules
import pandas as pd
import sqlite3 as sq

#connect to the database session
connection = sq.connect("xyz_db.db")
connection.cursor()

#query for database
query = "select c.customer_id as customer,c.age, i.item_name as item,sum(quantity) as quantity from sales_items as si \
    join items as i on i.item_id = si.item_id \
    join orders as o on o.order_id = si.order_id \
    join sales as s on s.sales_id = o.sales_id \
    join customer as c on c.customer_id = s.customer_id \
    where c.age between 18 and 35 \
    group by 1,2,3;"

#read the data from the database 
df = pd.read_sql_query(query,connection)

#save the resultset to the csv file with ';' seperator
df.to_csv("items_by_customer.csv",sep=";",index=False,header=True)

#close the session
connection.close()