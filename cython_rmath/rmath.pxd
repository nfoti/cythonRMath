#
# Mathlib : A C Library of Special Functions
# Copyright (C) 1998-2011  The R Core Team
# Copyright (C) 2004       The R Foundation
#
# This program is free software you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation either version 2.1 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program if not, a copy is available at
# http://www.r-project.org/Licenses/
#

cdef extern from "Rmath.h":

    # R's versions with !R_FINITE checks
    
    double R_pow(double x, double y)
    double R_pow_di(double, int)
    
    # Random Number Generators
    
    double	norm_rand()
    double	unif_rand()
    double	exp_rand()
    void	set_seed(unsigned int, unsigned int)
    void	get_seed(unsigned int *, unsigned int *)
    
    double	dnorm(double, double, double, int)
    double	pnorm(double, double, double, int, int)
    double	qnorm(double, double, double, int, int)
    double	rnorm(double, double)
    void	pnorm_both(double, double *, double *, int, int)  # both tails
    
    # Uniform Distribution
    
    double	dunif(double, double, double, int)
    double	punif(double, double, double, int, int)
    double	qunif(double, double, double, int, int)
    double	runif(double, double)
    
    # Gamma Distribution
    
    double	dgamma(double, double, double, int)
    double	pgamma(double, double, double, int, int)
    double	qgamma(double, double, double, int, int)
    double	rgamma(double, double)
    
    double  log1pmx(double)
    double  lgamma1p(double)
    double  logspace_add(double, double)
    double  logspace_sub(double, double)
    
    # Beta Distribution
    
    double	dbeta(double, double, double, int)
    double	pbeta(double, double, double, int, int)
    double	qbeta(double, double, double, int, int)
    double	rbeta(double, double)
    
    # Lognormal Distribution */
    
    double	dlnorm(double, double, double, int)
    double	plnorm(double, double, double, int, int)
    double	qlnorm(double, double, double, int, int)
    double	rlnorm(double, double)
    
    # Chi-squared Distribution
    
    double	dchisq(double, double, int)
    double	pchisq(double, double, int, int)
    double	qchisq(double, double, int, int)
    double	rchisq(double)
    
    # Non-central Chi-squared Distribution
    
    double	dnchisq(double, double, double, int)
    double	pnchisq(double, double, double, int, int)
    double	qnchisq(double, double, double, int, int)
    double	rnchisq(double, double)
    
    # F Distibution
    
    double	df(double, double, double, int)
    double	pf(double, double, double, int, int)
    double	qf(double, double, double, int, int)
    double	rf(double, double)
    
    # Student t Distibution
    
    double	dt(double, double, int)
    double	pt(double, double, int, int)
    double	qt(double, double, int, int)
    double	rt(double)
    
    # Binomial Distribution
    
    double	dbinom(double, double, double, int)
    double	pbinom(double, double, double, int, int)
    double	qbinom(double, double, double, int, int)
    double	rbinom(double, double)
    
    # Multnomial Distribution
    
    void	rmultinom(int, double*, int, int*)
    
    # Cauchy Distribution
    
    double	dcauchy(double, double, double, int)
    double	pcauchy(double, double, double, int, int)
    double	qcauchy(double, double, double, int, int)
    double	rcauchy(double, double)
    
    # Exponential Distribution
    
    double	dexp(double, double, int)
    double	pexp(double, double, int, int)
    double	qexp(double, double, int, int)
    double	rexp(double)
    
    # Geometric Distribution
    
    double	dgeom(double, double, int)
    double	pgeom(double, double, int, int)
    double	qgeom(double, double, int, int)
    double	rgeom(double)
    
    # Hypergeometric Distibution
    
    double	dhyper(double, double, double, double, int)
    double	phyper(double, double, double, double, int, int)
    double	qhyper(double, double, double, double, int, int)
    double	rhyper(double, double, double)
    
    # Negative Binomial Distribution
    
    double	dnbinom(double, double, double, int)
    double	pnbinom(double, double, double, int, int)
    double	qnbinom(double, double, double, int, int)
    double	rnbinom(double, double)
    
    double	dnbinom_mu(double, double, double, int)
    double	pnbinom_mu(double, double, double, int, int)
    double	qnbinom_mu(double, double, double, int, int)
    double	rnbinom_mu(double, double)
    
    # Poisson Distribution
    
    double	dpois(double, double, int)
    double	ppois(double, double, int, int)
    double	qpois(double, double, int, int)
    double	rpois(double)
    
    
    # Weibull Distribution
    
    double	dweibull(double, double, double, int)
    double	pweibull(double, double, double, int, int)
    double	qweibull(double, double, double, int, int)
    double	rweibull(double, double)
    
    # Logistic Distribution
    
    double	dlogis(double, double, double, int)
    double	plogis(double, double, double, int, int)
    double	qlogis(double, double, double, int, int)
    double	rlogis(double, double)
    
    # Non-central Beta Distribution
    
    double	dnbeta(double, double, double, double, int)
    double	pnbeta(double, double, double, double, int, int)
    double	qnbeta(double, double, double, double, int, int)
    double	rnbeta(double, double, double)
    
    # Non-central F Distribution
    
    double  dnf(double, double, double, double, int)
    double	pnf(double, double, double, double, int, int)
    double	qnf(double, double, double, double, int, int)
    
    # Non-central Student t Distribution
    
    double	dnt(double, double, double, int)
    double	pnt(double, double, double, int, int)
    double	qnt(double, double, double, int, int)
    
    # Studentized Range Distribution
    
    double	ptukey(double, double, double, double, int, int)
    double	qtukey(double, double, double, double, int, int)
    
    # Wilcoxon Rank Sum Distribution
    
    double dwilcox(double, double, double, int)
    double pwilcox(double, double, double, int, int)
    double qwilcox(double, double, double, int, int)
    double rwilcox(double, double)
    
    # Wilcoxon Signed Rank Distribution
    
    double dsignrank(double, double, int)
    double psignrank(double, double, int, int)
    double qsignrank(double, double, int, int)
    double rsignrank(double)
    
    # Gamma and Related Functions
    double	gammafn(double)
    double	lgammafn(double)
    double	lgammafn_sign(double, int*)
    void    dpsifn(double, int, int, int, double*, int*, int*)
    double	psigamma(double, double)
    double	digamma(double)
    double	trigamma(double)
    double	tetragamma(double)
    double	pentagamma(double)
    
    double	beta(double, double)
    double	lbeta(double, double)
    
    double	choose(double, double)
    double	lchoose(double, double)
    
    # Bessel Functions
    
    double	bessel_i(double, double, double)
    double	bessel_j(double, double)
    double	bessel_k(double, double, double)
    double	bessel_y(double, double)
    double	bessel_i_ex(double, double, double, double *)
    double	bessel_j_ex(double, double, double *)
    double	bessel_k_ex(double, double, double, double *)
    double	bessel_y_ex(double, double, double *)
    
    int	imax2(int, int)
    int	imin2(int, int)
    double	fmax2(double, double)
    double	fmin2(double, double)
    double	sign(double)
    double	fprec(double, double)
    double	fround(double, double)
    double	fsign(double, double)
    double	ftrunc(double)
    
    double  log1pmx(double)  # Accurate log(1+x) - x, {care for small x}
    double  lgamma1p(double) # Accurate log(gamma(x+1)), small x (0 < x < 0.5)
    
    # Compute the log of a sum or difference from logs of terms, i.e.,
    #
    #     log (exp (logx) + exp (logy))
    # or  log (exp (logx) - exp (logy))
    #
    # without causing overflows or throwing away too much accuracy:
    
    double  logspace_add(double logx, double logy)
    double  logspace_sub(double logx, double logy)
