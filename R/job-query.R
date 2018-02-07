
#' Create a new query job.
#'
#'   `dataset_id`, 'matrix_name'and `table_id` entries
#'   @param dataset_id dataset id
#'   @param matrix_name matrix name for the file to upload
#' @param token bearer token for authentication
#' @param write_disposition behavior for writing data.
#'   defaults to `"WRITE_APPEND"`, other possible values are
#'   `"WRITE_TRUNCATE"` ; see
#'   \href{https://cloud.google.com/bigquery/docs/reference/v2/jobs#configuration.query.writeDisposition}{the API documentation}
#'   for more information
#' @family jobs
#' @return a a array of information about tables column wise
#'
#' @export
#' @examples
#' \dontrun{
#' tok <- gettoken()
#' access_tok <- tok$access_token()
#' insert_query_job("c8ae82dc-4b93-4903-a0a1-4a053bc4c517","fghgf",token = access_tok)
#' insert_query_job("c8ae82dc-4b93-4903-a0a1-4a053bc4c517","fghgf",token = access_tok,maxResults=10)
#' }
insert_query_job <- function(datasetId,matrixname,token,maxResults=NULL,pageToken=NULL,selectedFields=NULL,startIndex=NULL){

  url <- paste0("/api/data/datasets/",datasetId,"/matrices/",matrixname,"/data")

  query = list(maxResults=maxResults,pageToken=pageToken,selectedFields=selectedFields,startIndex=startIndex)

  bq_get(url = url,token = token,query = query)
}
