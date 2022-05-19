#' @title UseMyTemplate
#' @description Use the MyTemplate Rmd for starting analysis
#' @param name name of analysis file
#' @param open should the file be opened after being created
#' @param ... arguments to be passed to \link[usethis]{use_template}
#' @importFrom usethis use_template
#' @import here
#' @examples
#' \donttest{
#' if(interactive()){
#'   UseMyTemplate(name = "UseMyTemplate.Rmd")
#' }
#' }
#'
#' @export
UseMyTemplate <-
  function(name = NULL,
           open = interactive(),
           ...) {

    if(is.null(name)){
      name <- "analysis.Rmd"
    }


    # usethis::use_package("usethis")

    usethis::use_template("skeleton.Rmd",
                 save_as=  name, #"analysis/analysis.Rmd",
                 data = list(),
                 package = "BolinRMDTemplate", ..., open = open)
  }
