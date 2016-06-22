---
layout: post
title: Equivalent definitions of uniform integrability
---

Uniform integrability is an important concept in measure and probability theory,
particularly with regard to the [study of martingales](https://math.la.asu.edu/~jtaylor/teaching/Spring2011/APM504/lectures/lecture27/lecture27.pdf),
and is often a necessary condition for convergence results. For example, uniform integrability is one of the 
assumptions of the [Vitali Convergence Theorem](https://en.wikipedia.org/wiki/Vitali_convergence_theorem), which can be used to prove that absolutely continuous
functions on an interval $[a,b]$ are precisely the functions for which 
$$ \int_{a}^{b}f'\ dm = f(b) - f(a). $$
As with many concepts in mathematics, there are several equivalent ways of stating uniform integrability:

Suppose $(X, \mathcal{S}, \mu)$ is a measure space and $\{f_{\lambda} : \lambda \in \Lambda\}$ is a family of complex-valued 
measurable functions on $X$.

**Definition 1:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ (UI) if* 
\begin{equation}
\lim_{t\rightarrow\infty} \sup_{\lambda} \int_{\{|f_{\lambda}| > t\}} |f_{\lambda}|\ d\mu = 0. 
\label{eq:def1}
\end{equation}

**Definition 2:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ if for all $\epsilon > 0$, 
there exists $\delta > 0$ such that*
\begin{equation}
\int_{A}\ |f_{\lambda}| \ d\mu < \epsilon
\label{eq:def2}
\end{equation}
*for all $\lambda \in \Lambda$ whenever $A \in \mathcal{S}$ such that 
$\mu(A) < \delta$.*

**Proposition 1:** Definitions 1 & 2 are equivalent when $(X, \mathcal{S}, \mu) = (\mathbb{R}^{k}, \mathcal{B}(\mathbb{R}^{k}), m)$, where $m$ is the
Lebesgue measure on $\mathbb{R}^{k}$.

$Proof.$ \
(Definition 1 $\Rightarrow$ Definition 2) Let $\epsilon > 0$. Choose $T > 0$ such that
$\sup_{\lambda}\int\ |f_{\lambda}|\cdot I(|f_{\lambda}| > T)\ d\mu < \epsilon / 2$. 
Then let $\delta := \epsilon / 2T$. Thus, for $A \in \mathcal{B}(\mathbb{R}^{k})$ with 
$\mu(A) < \delta$,
$$ \int_{A} |f_{\lambda}|\ d\mu = \int_{A\cap \{|f_{\lambda}| > T\}}|f_{\lambda}|\ d\mu + 
\int_{A\cap \{|f_{\lambda}| \leq T\}}|f_{\lambda}|\ d\mu \leq 
\int_{\{|f_{\lambda}| > T\}} |f_{\lambda}|\ d\mu + \frac{\epsilon}{2T}T < \epsilon $$
for all $\lambda \in \Lambda$. 

(Definition 1 $\Leftarrow$ Definition 2) Now suppose $\{f_{\lambda} : \lambda \in \Lambda\}$ 
satisfies Definition 2. Then it suffices to show that $\sup_{\lambda}\mu(\{|f_{\lambda}| > t\}) \rightarrow 0$ and $t \rightarrow \infty$. By way of contradiction, suppose there exists 
$\epsilon > 0$ such that for all $t > 0$, there exists $\lambda \in \Lambda$ such that $\mu(\{|f_{\lambda}| > t\}) \geq \epsilon$. 
By assumption we can choose $\delta > 0$ such that $\eqref{eq:def2}$ is satisfied. 
Then for each $n \in \mathbb{N}$, there exists $\lambda_{n} \in \Lambda$ such that 
$\mu(\{|f_{\lambda_n}| > n\}) \geq \epsilon$. Thus we can choose $\{E_{n}\}_{n=0}^{\infty}$ such 
that $E_n \in \mathcal{B}(\mathbb{R}^{k})$,  $\mu(E_n) = \delta / 2$, and $|f_{\lambda_n}(x)| > n$ for all $x \in E_n$ (see ($*$) below). Now choose $N$ such that 
$N \geq \frac{2\epsilon}{\delta}$, then
\begin{equation}
\int_{E_{N}}|f_{\lambda_{N}}|\ d\mu \geq \int_{E_N} N \ d\mu = N\cdot \frac{\delta}{2} \geq 
\epsilon.
\label{eq:1}
\end{equation}
This is a contradiction. 
$$\tag*{$\Box$}$$

It is important to realize that in a general measure space $(X, \mathcal{S}, \mu)$ definitions 1 and 2 may not be equivalent. 
For example, consider the measure space $(\mathbb{N}, \mathcal{P}(\mathbb{N}), c)$, where $c$ is the counting measure.
Let $f_n$, $n \in \mathbb{N}$, be defined by 
$$ f_n(\omega) = \left\{\begin{array}{cl}
0 & \omega \neq n \\
n & \omega = n
\end{array} \right..$$
Then for any $\epsilon > 0$, $\{f_n : n\in \mathbb{N}\}$ satisfies $\eqref{eq:def2}$ 
with $\delta = 1/2$ since $\emptyset$ is the only measurable set with measure less than $1/2$.
However,
$$ \lim_{t\rightarrow\infty}\sup_{n}\int_{\{|f_{n}| > t\}}|f_{n}|\ dc \geq 
\lim_{k\rightarrow\infty}\int_{\{|f_{k-1}| > k\}}|f_{k-1}|\ dc = \lim_{k\rightarrow\infty}k = \infty.$$

However, in a finite measure space definitions 1 & 2 are always equivalent. To see, we first consider the following lemma.

**Lemma 1:** Suppose $(X, \mathcal{S}, \mu)$ is a finite measure space and $\{f_{\lambda} : \lambda \in \Lambda\}$ is UI according to Definition 1. Then 
$$ \sup_{\lambda} \int |f_{\lambda}|\ d\mu < \infty. $$

$Proof.$ Since $\{f_{\lambda}\}$ satisfies Definition 1, there exists $T > 0$ such that
$$ \sup_{\lambda} \int_{\{|f_{\lambda}| > T\}}|f_{\lambda}|\ d\mu \leq 1. $$
Thus,
\begin{align*}
\sup_{\lambda} \int |f_{\lambda}|\ d\mu & = \sup_{\lambda}\left\{ \int_{\{|f_{\lambda}| \leq T\}} |f_{\lambda}|\ d\mu + 
\int_{\{|f_{\lambda}| > T\}} |f_{\lambda}|\ d\mu \right\} \\
& \leq T\mu(X) + 1 < \infty.
\end{align*}
$$\tag*{$\Box$}$$

**Proposition 2:** On a measure space $(X, \mathcal{S}, \mu)$, definitions 1 & 2 are equivalent if $\mu(X) < \infty$.

$Proof.$ The proof Definition 1 implies Definition 2 is exactly the same as in the proof of Proposition 1. Now suppose $\{f_{\lambda} : \lambda \in \Lambda\}$ 
satisfies Definition 2. Let $\epsilon > 0$. Then choose $\delta > 0$ such that $\int_{A}|f_{\lambda}|\ d\mu < \epsilon$ for all $\lambda \in \Lambda$ and
$A \in \mathcal{S}$ with $\mu(A) < \delta$. By Lemma 1, there exists $M > 0$ such that $\int |f_{\lambda}|\ d\mu < M$ for all $\lambda \in \Lambda$.
Now let $T > 0$ such that $M < T\delta$. Fix $\lambda \in \Lambda$ and set $A := \{x \in X : |f_{\lambda}(x)| > T\}$. Thus,
$$ T\mu(A) = \int_{A}T\ d\mu \leq \int_{A}|f_{\lambda}|\ d\mu \leq M, $$
which implies $\mu(A) \leq MT^{-1} < \delta$. Hence $\int_{A}|f_{\lambda}|\ d\mu < \epsilon$.
$$\tag*{$\Box$}$$

> ($*$) One property of Lebesgue measure on $\mathbb{R}^{k}$ is that if $\mu(A) = R > 0$, then for all $0 < r < R$, 
there exists a Borel set $E \subset A$  such that $\mu(E) = r$. 

### References

1. Athreya, K.B., and S.N. Lahiri, *Measure Theory and Probability Theory*
