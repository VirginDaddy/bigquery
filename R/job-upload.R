#' Upload data.
#'
#' This sends all of the data inline in the HTTP request so is only suitable
#' for relatively small datasets.
#'
#' @inheritParams get_table
#' @param datasetID dataset id
#' @param matrixname matrix name for the file to upload
#' @param token bearer token for authentication
#' @param filepath filepath for the file to upload
#' @param write_disposition behavior for writing data if the destination already
#'   exists. defaults to `"WRITE_APPEND"`, other possible values are
#'   `"WRITE_TRUNCATE"` ; see
#'   \href{https://cloud.google.com/bigquery/docs/reference/v2/jobs#configuration.load.writeDisposition}{the API documentation}
#'   for more information
#' @inheritParams insert_dataset
#' @seealso Google API documentation:
#' \url{https://developers.google.com/bigquery/loading-data-into-bigquery#loaddatapostrequest}
#' @family jobs
#' @export
#' @examples
#' \dontrun{
#' tok <- gettoken()
#' access_tok <- tok$access_token()
#' insert_upload_job("c8ae82dc-4b93-4903-a0a1-4a053bc4c517","fghgf",token = access_tok,filepath = "1.csv")
#' }


insert_upload_job <- function(datasetId,matrixname,token,filepath,autodetect="true",maxBadRecords=0,writeDisposition="WRITE_APPEND"){

  metadata <- list(id="cdfg888cdf-zzxc-425f-bf36-747816afaz95",configuration=list(load=list(maxBadRecords=maxBadRecords,sourceFormat="CSV",writeDisposition=writeDisposition,autodetect=autodetect)))

  metadata_json <- RJSONIO::toJSON(metadata)

  url <- paste0("/api/data/datasets/",datasetId,"/matrices/",matrixname,"/upload")

  bq_upload(url = url,token = token,metadata=metadata_json,filepath = filepath)

  }
