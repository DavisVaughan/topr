% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/effectplot.R
\name{match_by_pos}
\alias{match_by_pos}
\title{Get variants that overlap between two datasets}
\usage{
match_by_pos(df1, df2, verbose = NULL, show_full_output = FALSE)
}
\arguments{
\item{df1}{A dataframe of variants, has to contain CHROM and POS}

\item{df2}{A dataframe of variants, has to contain CHROM and POS}

\item{verbose}{A logical scalar (default: FALSE). Assign to TRUE to get information on which alleles are matched and which are not.}

\item{show_full_output}{A logical scalar (default:FALSE). Assign to TRUE to show the full output from this function}
}
\value{
A list containing two dataframes, one of overlapping snps and the other snps not found in the second input dataset
}
\description{
\code{match_by_pos()}
}
\examples{
\donttest{
CD_UKBB_index_snps <- get_lead_snps(CD_UKBB)
match_by_pos(CD_UKBB_index_snps, CD_FINNGEN)
}

}
