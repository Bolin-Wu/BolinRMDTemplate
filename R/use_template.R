#' @title Template
#' @description Use the Rmd template for starting analysis
#' @param name name of analysis file
#' @param open should the file be opened after being created
#' @importFrom usethis use_template
#' @importFrom here
#' @examples
#' \donttest{
#' if(interactive()){
#'   use_BolinTemplate(name = "analysis_report.Rmd")
#' }
#' }
#'
#' @export
use_BolinTemplate <-
  function(name = NULL,
           open = interactive(),
           ...) {

    if(is.null(name)){
      name <- "analysis_report.Rmd"
    }

    usethis::use_template("skeleton.Rmd",
                 save_as=name,
                 data = list(),
                 package = "BolinRMDTemplate",...,open = open)
  }
