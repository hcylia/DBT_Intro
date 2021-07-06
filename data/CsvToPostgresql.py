################################### dbt seed ####################################
# import pandas as pd
# from sqlalchemy import create_engine
# import os
#
#
# _path = os.path.dirname(os.path.realpath(__file__))
# _engineParam = 'postgresql://postgres:postgresql@127.0.0.1/postgres'
#
#
# def insert_create(cnx, db):
#     for tbl in db:
#         db[tbl].to_sql(tbl, cnx, if_exists='replace', index=False)
#         print("{} created.".format(tbl))
#
#
# def migration(cnx):
#     db = {}
#     file = "train.csv"
#     tbl = file.split(".")[0]
#     db[tbl] = pd.read_csv(os.path.join(_path, file))
#     insert_create(cnx, db)
#     return db
#
#
# if __name__ == '__main__':
#     cnx = create_engine(_engineParam).connect()
#     migration(cnx)
#     cnx.close()
