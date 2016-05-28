### Characterizations of converence (general measure theory)

![](./figures/post004/convergence_measureTheory.png)

Let $(\Omega, \mathcal{S}, \mu)$ be a measure space and $f, f_{0}, f_{1}, ...$ real-valued measurable functions on $\Omega$.
 
**Theorem 1:** *Suppose $\mu(\Omega) < \infty$. If $f_{n} \rightarrow f$ almost everywhere ($\mu)$, then $f_{n} \rightarrow f$ in measure.*

**Theorem 2:** *Suppose $f_{n} \rightarrow f$ in measure. Then there exists a subsequence $\{n_{k}\}_{k=0}^{\infty}$ such that $f_{n_{k}} \rightarrow f$ a.e. ($\mu$).*

**Theorem 3:** *If $f_{n} \rightarrow f$ in $L^{p}(\Omega, \mathcal{S}, \mu)$, $0 < p < \infty$, then $f_{n} \rightarrow f$ in measure. 
If $\mu(\Omega) < \infty$ and $f_{n} \rightarrow f$ in $L^{\infty}$, then $f_{n} \rightarrow f$ in measure.*

**Theorem 4:** (Scheffe's Theorem) *Suppose $f_{n} \geq 0$, $f_{n} \in L^{1}$ for all $n \in \mathbb{N}$ and $f_{n} \rightarrow f$ a.e. ($\mu$). If*
$$ \int f_{n}\ d\mu \rightarrow \int f\ d\mu < \infty.$$
*Then $f_{n} \rightarrow f$ in $L^{1}$.*

**Theorem 5:** *Suppose $\mu(\Omega) < \infty$,  $f_{n} in L^{1}$ for all $n \in \mathbb{N}$, $f_{n} \rightarrow f$ a.e. ($\mu$), and $\{f_{n}\}_{n=0}^{\infty}$ is 
[UI](./post001.html). Then $f \in L^{1}$ and $f_{n} \rightarrow f$ in $L^{1}$.*

**Counter examples:**

For each of the following examples suppose $\mu$ is Lebesgue measure on $\mathbb{R}$ and $f \equiv 0$.

A. Suppose $\Omega = [0,1]$. For $k\geq 1$ and $0 \leq i < 2^{k}$, let $n = n(k, i) = 2^{k} + i$ and define $f_{n} := \chi_{E_{n}}$, where $E_{n} := [i2^{-k}, (i+1)2^{-k}]$.
Then $f_{n} \rightarrow f$ in measure and in $L^{p}$, $0 < p \leq \infty$, but $f_{n} \not\rightarrow f$ a.e. ($\mu$).

B. Suppose $\Omega = [0, \infty)$. Let $f_{n} := \chi_{[n,\infty)}$ for each $n \geq 0$. Then $f_{n} \rightarrow f$ a.e. ($\mu$) but $f_{n} \not\rightarrow f$ in $L^{p}$, $0 < p \leq \infty$.

C. Suppose $\Omega = [0,1]$ and for $n \geq 1$, let $f_{n} := n\chi_{[0,n^{-1}]}$. Then $f_{n} \rightarrow f$ in measure but not in $L^{p}$, $0 < p \leq \infty$.

### Characterizations of convergence (probability theory)


### Characterizations of continuity
