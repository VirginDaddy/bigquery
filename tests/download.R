library(bigquery)

token <- gettoken()
access_tok <- token$access_token()

insert_query_job("c8ae82dc-4b93-4903-a0a1-4a053bc4c517","fghgf",token = access_tok)
