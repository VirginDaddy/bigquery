

base_url <- "https://shortesttrack.com"

#' @importFrom httr GET config
bq_get <- function(url,token,query=NULL){

  req <- httr::GET(
    paste0(base_url,url),
    query = query,
    httr::add_headers("Authorization"= paste0("Bearer ",token))
  )
  httr::content(req)$rows
}

#' @importFrom httr POST config
bq_upload<- function(url,token,metadata,filepath){
  req <- httr::POST(
    paste0(base_url,url),
    httr::add_headers("Authorization"= paste0("Bearer ",token)),
    body = list(
      metadata = metadata,
      file = httr::upload_file(filepath)
    )
  )
  req
}





#id <- '{"id": "abc888abc-zzxc-425f-bf36-7478asdasf","configuration": {"load": {"maxBadRecords":0,"sourceFormat": "CSV","writeDisposition": "WRITE_APPEND","autodetect": "false"}}}'
