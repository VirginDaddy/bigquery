#source('Untitled.R')
#library(httr)
library(RJSONIO)
#r <- POST("https://web_app:xepoyo39@shortesttrack.com/oauth/token",body = list(grant_type='password',client_id='web_app',client_secret='xepoyo39',username='public-admin@localhost',company_id='test_shortesttrack_functionality',password='x928TnQxCTeg5Jyu'))

#z = student()

#headers(r)



item <- list(id="abc888abc-zzxc-425f-bf36-7478asdasf",configuration=list(load=list(maxBadRecords=0,sourceFormat="CSV",writeDisposition="WRITE_APPEND",autodetect="false")))
toJSON(item)

