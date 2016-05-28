### Characterizations of converence (general measure theory)

[![](./figures/post004/convergence_measureTheory.png)](./figures/post004/convergence_measureTheory.png)

Let $(\Omega, \mathcal{S}, \mu)$ be a measure space and $f, f_{0}, f_{1}, ...$ real-valued measurable functions on $\Omega$.
 
**Theorem 1:** *Suppose $\mu(\Omega) < \infty$. If $f_{n} \rightarrow f$ almost everywhere ($\mu)$, then $f_{n} \rightarrow f$ in measure.*

**Theorem 2:** *Suppose $f_{n} \rightarrow f$ in measure. Then there exists a subsequence $\{n_{k}\}_{k=0}^{\infty}$ such that $f_{n_{k}} \rightarrow f$ a.e. ($\mu$).*

**Theorem 3:** *If $f_{n} \rightarrow f$ in $L^{p}(\Omega, \mathcal{S}, \mu)$, $0 < p < \infty$, then $f_{n} \rightarrow f$ in measure. 
If $\mu(\Omega) < \infty$ and $f_{n} \rightarrow f$ in $L^{\infty}$, then $f_{n} \rightarrow f$ in measure.*

**Theorem 4:** (Scheffe's Theorem) *Suppose $f_{n} \geq 0$, $f_{n} \in L^{1}$ for all $n \in \mathbb{N}$ and $f_{n} \rightarrow f$ a.e. ($\mu$). If*
$$ \int f_{n}\ d\mu \rightarrow \int f\ d\mu < \infty.$$
*Then $f_{n} \rightarrow f$ in $L^{1}$.*

**Theorem 5:** *Suppose $\mu(\Omega) < \infty$,  $f_{n} \in L^{1}$ for all $n \in \mathbb{N}$, $f_{n} \rightarrow f$ a.e. ($\mu$), and $\{f_{n}\}_{n=0}^{\infty}$ is 
[UI](./post001.html). Then $f \in L^{1}$ and $f_{n} \rightarrow f$ in $L^{1}$.*

**Theorem 6:** *Suppose $\mu(\Omega) < \infty$, $f_{n} \in L^{p}$, $0 < p < \infty$, $\{|f_{n}|^{p}\}_{n=0}^{\infty}$ is UI, and $f_{n} \rightarrow f$ in measure. Then $f \in L^{p}$ 
and $f_{n} \rightarrow f$ in $L^{p}$.*

**Counter examples:**

For each of the following examples suppose $\mu$ is Lebesgue measure on $\mathbb{R}$ and $f \equiv 0$.

A. Suppose $\Omega = [0,1]$. For $k\geq 1$ and $0 \leq i < 2^{k}$, let $n = n(k, i) = 2^{k} + i$ and define $f_{n} := \chi_{E_{n}}$, where $E_{n} := [i2^{-k}, (i+1)2^{-k}]$.
Then $f_{n} \rightarrow f$ in measure and in $L^{p}$, $0 < p \leq \infty$, but $f_{n} \not\rightarrow f$ a.e. ($\mu$).

B. Suppose $\Omega = [0, \infty)$. Let $f_{n} := \chi_{[n,\infty)}$ for each $n \geq 0$. Then $f_{n} \rightarrow f$ a.e. ($\mu$) but $f_{n} \not\rightarrow f$ in $L^{p}$, $0 < p \leq \infty$.

C. Suppose $\Omega = [0,1]$ and for $n \geq 1$, let $f_{n} := n\chi_{[0,n^{-1}]}$. Then $f_{n} \rightarrow f$ in measure but not in $L^{p}$, $0 < p \leq \infty$.


### Characterizations of convergence (probability theory)

[![](./figures/post004/convergence_probTheory.png)](./figures/post004/convergence_probTheory.png)

**Theorem 7:** *Suppose $\{X_{n}\}_{n=0}^{\infty}$ is UI and $X_{n} \rightarrow X$ in distribution. Then $E|X_{0}| < \infty$ and $EX_{n} \rightarrow EX_{0}$.*

**Theorem 8:** (Skorohod's Embedding Theorem) *Suppose $X, X_1, X_2, ...$ are random variables, possibly defined on different probability spaces.
Let $\mu, \mu_{n}$ denote the probability distributions of $X, X_{n}$, respectively, on $(\mathbb{R}, \mathcal{B}(\mathbb{R}))$ for 
$n \in \mathbb{N}$. If $X_{n} \rightarrow X$ in distribution, i.e. $\mu_{n}$ coverges to $\mu$ weakly, then there exists random variables $Y$, $Y_{n}$, $n \in \mathbb{N}$, defined
on a common probability space $(\Omega, \mathcal{S}, P)$ such that $Y, Y_{n}$ have probability distributions $\mu, \mu_{n}$, respectively, for $n \in \mathbb{N}$, and so that 
$Y_{n} \rightarrow Y$ a.s. ($P$).*

**Theorem 9:** *Suppose $\{X_{n}\}_{n=1}^{\infty}$ is a sequence of independent random variables on probability space. 
Let $S_{n} := \sum_{j=1}^{n}X_{n}$. Then $S_{n}$ converges in probability to a random variable $S$ if and only if $S_{n}$ converges a.s. ($P$) to $S$.*

**Theorem 10:** *Convergence in probability implies convergence in distribution. Hence so does convergence a.s. and convergence in $L^{p}$, $0 < p \leq \infty$.*

**Counter examples:**

D. Suppose $X, X_{1}, X_{2}, ...$ are uniform $(0,1)$ random variables but $X$ is defined on a different probability space than $\{X_{n}\}_{n=0}^{\infty}$. Then $X_{n} \rightarrow X$
in distribution and in expectation, but not in probability, in $L^{p}$, or almost surely.


### Characterizations of continuity

[![](./figures/post004/continuity.png)](./figures/post004/continuity.png)
