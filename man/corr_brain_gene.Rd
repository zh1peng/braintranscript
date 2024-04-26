% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cor_brain_gene.R
\name{corr_brain_gene}
\alias{corr_brain_gene}
\title{Calculate correlations or associations between gene and brain data}
\usage{
corr_brain_gene(
  gene_data,
  brain_data,
  method = c("pearson", "spearman", "pls1c", "pls1w", "custom"),
  r2z = TRUE
)
}
\arguments{
\item{gene_data}{A data frame or matrix of gene expression data.}

\item{brain_data}{A data frame or matrix of brain data.}

\item{method}{The method to be used for correlation/association. Can be 'pearson', 'spearman',
'pls1c', 'pls1w', or a custom function provided by the user.}

\item{r2z}{Logical, indicating whether to convert correlation coefficients to Fisher's Z scores.
Only applicable to 'pearson'.}
}
\value{
A matrix with correlation or association coefficients between gene data and brain data.
}
\description{
Calculate correlations or associations between gene and brain data
}
\examples{
# Custom correlation function example
custom_cor <- function(gene_data, brain_data) {
  apply(gene_data, 2, function(g) apply(brain_data, 2, function(b) cor(g, b, method = "pearson")))
}
result <- corr_brain_gene(gene_data, brain_data, method = custom_cor)
}