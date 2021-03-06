% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fts.freqdom.R
\name{fts.freqdom}
\alias{fts.freqdom}
\title{Creates an object of class  \code{fts.freqdom}.}
\usage{
fts.freqdom(F, basisX, basisY = basisX)
}
\arguments{
\item{F}{an object of class freqdom.}

\item{basisX}{an object of class \code{basis.fd} (see \code{\link[fda]{create.basis}})}

\item{basisY}{an object of class \code{basis.fd} (see \code{\link[fda]{create.basis}})}
}
\value{
Returns an object of class  \code{fts.freqdom}. An object of class
\code{fts.freqdom} is a list containing the following components:
\itemize{
\item \code{operators} \eqn{\quad} returns the array \code{F$operators}.
\item \code{basisX} \eqn{\quad} returns \code{basisX} as given in the argument.
\item \code{basisY} \eqn{\quad} returns \code{basisY} as given in the argument.
\item \code{freq} \eqn{\quad} returns the vector \code{F$freq}.
}
}
\description{
Creates an object of class  \code{fts.freqdom}.
}
\details{
This class is used to describe a frequency domain operator (for example a spectral
density operator) on selected frequencies. Formally we consider an object of class
\code{\link{freqdom}} and add some basis functions. Depending on the context, we
have different interpretations for the new object.

(I) In order to define an operator which maps between two functions spaces, the we
interpret \code{F$operators} as coefficients in the basis function expansion of
the kernel of some finite rank operators \deqn{\mathcal{F}_k:\mathrm{span}(\code{basisY})+\mathrm{i}\, \mathrm{span}(\code{basisY})\to\mathrm{span}(\code{basisX})+\mathrm{i}\, \mathrm{span}(\code{basisX}).} The kernels are \eqn{f_k(u,v)=\boldsymbol{b}_1^\prime(u)\, F_k\, \boldsymbol{b}_2(v)}, where \eqn{\boldsymbol{b_1}(u)=(b_{11}(u),\ldots, b_{1d_1}(u))^\prime} and \eqn{\boldsymbol{b_2}(u)=(b_{21}(u),\ldots, b_{2d_1}(u))^\prime} are the basis functions provided by the arguments  basisX and basisY, respectively. Moreover, we consider frequencies \eqn{\{\omega_1,\ldots, \omega_K\}\subset[-\pi,\pi]}. The object this function creates corresponds to the mapping \eqn{\omega_k \mapsto f_k(u,v)}.

(II) We may ignore basisX, and represent the linear mapping
\deqn{\mathcal{F}_k:\mathrm{span}(\code{basisY})+\mathrm{i}\, \mathrm{span}(\code{basisY})\to C^{d_1},}
by considering \eqn{f_k(v):=F_k\,\boldsymbol{b}_2(v)} and \eqn{\mathcal{F}_k(x)=\int f_k(v)x(v)dv}.

(III) We may ignore basisY, and represent the linear mapping
\deqn{\mathcal{F}_k: C^{d_1}\to\mathrm{span}(\code{basisX})+\mathrm{i}\, \mathrm{span}(\code{basisX}),}
by considering \eqn{f_k(u):=\boldsymbol{b}_1^\prime(u)F_k} and \eqn{\mathcal{F}_k(y)=f_k(u)y}.
}
\seealso{
The multivariate equivalent in the \code{freqdom} package: \code{\link[freqdom]{freqdom}}
}
\keyword{classes}
