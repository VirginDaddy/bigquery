
#' @importFrom httr POST config
gettoken <- setRefClass("student",fields = list(token = "character"),
                       methods = list(
    access_token = function() {

        if(length(token)==0){
            r <- httr::POST("https://web_app:xepoyo39@shortesttrack.com/oauth/token",body = list(grant_type='password',client_id='web_app',client_secret='xepoyo39',username='public-admin@localhost',company_id='test_shortesttrack_functionality',password='x928TnQxCTeg5Jyu'))
            token <<- httr::content(r)$access_token
        }
        token

    }
  ))



