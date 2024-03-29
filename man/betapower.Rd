% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/betapower.R
\name{betapower}
\alias{betapower}
\title{Find Power with Beta distribution}
\usage{
betapower(mu0, sd0, mu1.start, mu1.end = NULL, mu1.by = NULL, 
ss.start, ss.end = NULL, ss.by = NULL, sig.level = 0.05,
trials = 100, seed = 1, link.type="logit",
equal.precision=TRUE, sd1 = NULL)
}
\arguments{
\item{mu0}{the mean for the control group}

\item{sd0}{the standard deviation for the control group}

\item{mu1.start}{the starting value of mean for the treatment group under the alternative mu1}

\item{mu1.end}{the ending value of mean for the treatment group under the alternative mu1}

\item{mu1.by}{the step length of mean for the treatment group under the alternative mu1}

\item{ss.start}{the starting value of sample size}

\item{ss.end}{the ending value of sample size}

\item{ss.by}{the step length of sample size}

\item{sig.level}{significant level; default value is 0.05}

\item{trials}{the number of trials}

\item{seed}{the seed used in the simulation}

\item{link.type}{the type of link used in the beta regression. Default value is "logit", or you can use "all" or choose one or more of the following: "logit", "probit", "cloglog", "cauchit", "log", "loglog"}

\item{equal.precision}{equal dispersion parameter assumption in simulation}

\item{sd1}{the standard deviation for the treatment group. Only applicable when equal.precision = FALSE}
}
\value{
Return a matrix with 7 to 12 columns: 
\item{power.of.GLM: link name}{the power using regression method; it will return the power with every links if you use link.type = "all" statement.}
\item{power.of.Wilcoxon.test}{the power from Wilcoxon Rank sum test.}
\item{sample size}{sample size.} 
\item{mu1}{the mean for the treatment group under the alternative.}
\item{mu0}{the mean for the control group.}
\item{sd0}{the standard deviation for the control group.}
\item{trials}{the number of trials.}
}
\description{
Find the power for a given sample size when testing the null hypothesis that the means for the control and treatment groups are equal against a two-sided alternative.
}
\details{
betapower function allows you to control the number of trials in the simulation, 
the sample sizes used, and the alternative means. 
You can fix the alternative and vary sample size to match a desired power;
You can fix the sample size and vary the alternative to see which will match a desired power;
You can vary both;
Start with a small number of trials (say 100) to determine the rough range of sample sizes or alternatives;
Use a larger number of trials (say 1000) to get better estimates.
}
\examples{
betapower(mu0 = 0.56, sd0 = 0.255, mu1.start = .70, mu1.end = .75, mu1.by = .05, 
ss.start = 30, ss.end = 50, ss.by = 20, trials = 20)
}
