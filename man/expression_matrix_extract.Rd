% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expression.R
\name{expression_matrix_extract}
\alias{expression_matrix_extract}
\title{Extract expression data matrix from ExprX object}
\usage{
expression_matrix_extract(expr_data, species, geneset, normalized)
}
\arguments{
\item{expr_data}{ExprX object. It can be the ExprX object originally generated with
\code{\link{make_ExprX_dataset}}, or the updated object generated with
\code{\link{ortholog_expression_merge}} or
\code{\link{ortholog_expression_normalize}}.}

\item{species}{Species name (eg. human, mouse etc). If not specified, data for all species
will be returned.}

\item{geneset}{all or ortholog. Indicating the set of genes to be extracted. If set as all,
expression data for all genes will be returned. If set as ortholog, only
expression data for 1:1 orthologs will be returned. Expression data for
matched orthologs are only available after the ExprX objected has been
updated with \code{\link{ortholog_expression_merge}}.}

\item{normalized}{TRUE or FALSE. Indicating if extract the normalized expression data. If set
as TRUE, normalized expression data will be returned. If set as FALSE, raw
expression values will be returned. To be noted, normalized expression data
are available for ortholog genes if only the input expr_data has been
processed by \code{\link{ortholog_expression_normalize}}.}
}
\value{
Expression data matrix, with rows for genes and columns for samples.
}
\description{
This function parse ExprX object to get the expression data matrix for
specific species or groups of genes. The input ExprX object can be
originally generated with \code{\link{make_ExprX_dataset}}, or updated
with \code{\link{ortholog_expression_merge}} or
\code{\link{ortholog_expression_normalize}}. The returned expression
data matrix can be normalized or not, depending on the input ExprX object.
}
\examples{
hs2mm.expr      <- expression_matrix_extract(hs2mm.orth, "all", "ortholog", FALSE)
hs2mm.expr.norm <- expression_matrix_extract(hs2mm.orth, "all", "ortholog", TRUE)
hs2mm.expr.hs   <- expression_matrix_extract(hs2mm.orth, "human", "ortholog", FALSE)
hs2mm.expr.mm   <- expression_matrix_extract(hs2mm.orth, "human", "ortholog", FALSE)
}
