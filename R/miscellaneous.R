filter_on_chr <- function(dat,chr){
  chr <- gsub("chr", "", chr)
  for(i in seq_along(dat)){
    dat[[i]] <- dat[[i]] %>% dplyr::filter(CHROM==chr)
  }
  return(dat)
}

filter_on_xmin_xmax <- function(dat,xmin=NULL,xmax=NULL){
  for(i in seq_along(dat)){
    if(! is.null(xmin)) {
      if(xmin < 0){
        xmin <- 0
      }
      dat[[i]] <- dat[[i]] %>% dplyr::filter(POS >= xmin)
    }
    if(! is.null(xmax)) dat[[i]] <-  dat[[i]] %>% dplyr::filter(POS <= xmax)
  }
  return(dat)
}


include_chrX <- function(dat){
  for(i in seq_along(dat)){
    if("23" %in% unique(dat[[i]]$CHROM)){
      return(TRUE)
    }
  }
  return(FALSE)
}

is_df_empty <- function(df, type){
  if(is.null(type)) type <- "main data "
  if(is.data.frame(df)) df <- list(df)
  for(i in seq_along(df)){
    datrows <- nrow(df[[i]])
    if(datrows == 0){
      stop(paste("One or more of the dataframes provided as input is empty!!! (", type," n=",i,")",sep=""))
    }
  }
}
