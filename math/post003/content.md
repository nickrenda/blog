Before proceeding let's confuse ourselves with several definitions.

**Definition 1:** (Absolutely continuous measures) *Suppose $\mu$ and $\nu$ are measures on a measurable space
$(\Omega, \mathcal{S})$. We say that $\mu$ is __absolutely continuous__ with respect to $\nu$ if
$\mu(A) = 0$ whenever $\nu(A) = 0$, for $A \in \mathcal{S}$. This is often denoted as $\mu \ll \nu$*.

**Definition 2:** (Singular measures) *We say the measure $\mu$ is __singular__ with respect to $\nu$, often denoted $\mu \perp \nu$,
if there exists a set $A \in \mathcal{S}$ such that $\mu(A) = \nu(\Omega - A) = 0$*.

**Definition 3:** (Absolutely continuous functions) *Suppose $-\infty < a < b < \infty$ and $f : [a,b] \rightarrow \mathbb{R}$. We
say that $f$ is __absolutely continuous__ if for all $\epsilon > 0$, there exists a $\delta > 0$ such that for every finite
disjoint collection $\{(a_k, b_k)\}_{k=1}^{n}$ of open intervals in $(a,b)$*,
$$\text{ if } \sum_{k=1}^{n}[b_{k} - a_{k}] < \delta \text{ then } \sum_{k=1}^{n}|f(b_{k}) - f(a_{k})| < \epsilon.$$

**Definition 4:** (Singular functions) *A real-valued function is said to be __singular__ if its defivative is 0 almost everywhere with respect to
Lebesgue measure $m$*.

Now that we have successfully abused some terminology, let's talk about the relationship between the Lebesgue decomposition theorems.

There are two forms of the Lebesgue decomposition theorem (LDT): the first states that 
a measure $\mu$ on a $\sigma$-finite measure space can be decomposed as the sum of two measures, one of
which is absolutely continuous (in the sense of Definition 1) and one of which is singular (Definition 2) with respect
to another $\sigma$-finite measure $\nu$ (LDT1), and the second states that a real-valued function $f$ of 
[bounded variation](https://en.wikipedia.org/wiki/Bounded_variation)
defined on a closed and bounded interval $[a,b]$ can be decomposed as the sum 
of a function $g$ which is absolutely continuous (in the sense of Definition 3) and
of a function $h$ which is singular (Definition 4) (LDT2). In particular, we can write
$f = g + h$ where 
\begin{equation}
g(x) := \int_{a}^{x}f'\ dm \ \text{ and } \ h(x) := f(x) - \int_{a}^{x}f'\ dm\ \text{ for all }x \in [a,b].
\label{1}
\end{equation}
Since $f$ has bounded variation, $f'$ exists almost everywhere ($m$) and so the $g$ and $h$ in
$\eqref{1}$ are well-defined.

Considering the overlap of terminology
it is not surprising that these theorems are closely related. In fact LDT1, when restricted to the 
measurable space $([a,b], \mathcal{B}[a,b])$ and when the second measure is Lebesgue measure $m$, 
can be seen as a special case of LDT2, where $-\infty < a < b < \infty$
and $\mathcal{B}[a,b]$ denotes the Borel $\sigma$-algebra over $[a,b]$.

The proof of this relationship is quite simple.

$Proof.$ Without loss of generality assume $a = 0$ and $b = 1$. Suppose $\mu$ is a measure on $([0,1], \mathcal{B}[0,1])$.
We will use LDT2 to prove LDT1, i.e. to show that $\mu$ can be decomposed as $\mu = \nu + \lambda$, where $\nu \ll m$ and 
$\lambda \perp m$. Let
$$ F(t) := \mu([0, t]), \ t \in [0,1], $$
i.e. $F$ is the cumulative distribution function (cdf) of $\mu$. In order to apply LDT2, we need $F$ to be of bounded variation.
However, since $F$ is non-decreasing this is trivial. Thus we can decompose $F$ as the sum of an absolutely continuous function 
$G$ and a singular function $H$ given by
$$ G(x) := \int_{0}^{x}F'\ dm \ \text{ and } \ H(x) := F(x) - \int_{0}^{x}F'\ dm. $$
First we will show that $G$ and $H$ are valid cdf's.

**Claim 1:** $G$ and $H$ are non-decreasing and right-continuous.

*Proof of Claim 1:* This is trivial for $G$. Now for $H$, let $x,y \in [0,1]$ such that $x > y$. Since $F$ is non-decreasing,
$\int_{y}^{x}F'\ dm \leq F(x) - F(y)$. Hence,
$$ H(x) - H(y) = F(x) - F(y) - \int_{y}^{x} F'\ dm \geq F(x) - F(y) - [F(x) - F(y)] = 0. $$
Therefore $H$ is non-decreasing. Now, by the right-continuity of $F$ and the continuity of the integrand,
$$ \lim_{y\rightarrow x^{+}} H(y) = \lim_{y\rightarrow x^{+}} F(y) - \int_{0}^{y}F'\ dm = F(x) - \int_{0}^{x}F'\ dm = H(x). $$
$$\tag*{$\blacksquare$ Claim 1}$$

By Claim 1, $G$ and $H$ are the cdf's of two measures, call them $\nu$ and $\lambda$, respectively. It follows that $\mu = \nu + \lambda$ where $\nu$
is given explicitly by
$\nu(A) = \int_{A}F' dm$ (a good exercise is to verify this yourself).
Thus $\nu \ll m$. Further, since $H' \equiv 0$ a.e. ($m$), $\lambda(A) > 0$ if and only if $A$ contains a discontinuity point of $H$.
But the discontinuity points $\mathcal{D}$ of $H$ form a countable set (why is this?). Therefore $0 = m(\mathcal{D}) = \lambda([0,1] - \mathcal{D})$.
Hence $\lambda \perp m$ by definition.
$$\tag*{$\Box$}$$

> NOTES: A nice proof of a general form of LDT1 can be found [here](http://arxiv.org/pdf/1404.1871v1.pdf).  
