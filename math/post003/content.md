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
to another $\sigma$-finite measure $\nu$ (LDT1), and the second states that a real-valued function of 
[bounded variation](https://en.wikipedia.org/wiki/Bounded_variation)
defined on a closed and bounded interval $[a,b]$ can be decomposed as the sum 
of a function with is absolutely continuous (in the sense of Definition 3) and one 
of which is singular (Definition 4) (LDT2). Considering overlap of terminology
it is not surprising that these theorems are closely related. In fact, LDT1 when restriced to the 
measurable space $([a,b], \mathcal{B}[a,b])$ can be seen as a special case of LDT2, where $-\infty < a < b < \infty$
and $\mathcal{B}[a,b]$ denotes the Borel $\sigma$-algebra over $[a,b]$.

>> NOTES: A nice proof of a general form of LDT1 can be found [here](http://arxiv.org/pdf/1404.1871v1.pdf). Also note the 
