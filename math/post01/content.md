We will prove the equivalence of the two following definitions of uniform integrability
with respect to Lebesgue measure $\mu$ on $\mathbb{R}^{k}$.

Suppose $\{f_{\lambda} : \lambda \in \Lambda\}$ is a family of complex-valued measurable functions on $\mathbb{R}^{k}$.

**Def 1:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ if* 
\begin{equation}
\lim_{t\rightarrow\infty} \sup_{\lambda} \int_{\{|f_{\lambda}| > t\}} |f_{\lambda}|\ d\mu = 0. 
\label{eq:def1}
\end{equation}

**Def 2:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ if for all $\epsilon > 0$, there exists $\delta > 0$ such that*
\begin{equation}
\int_{A}\ |f_{\lambda}| \ d\mu < \epsilon
\label{eq:def2}
\end{equation}
*for all $\lambda \in \Lambda$ whenever $A \in \mathcal{B}(\mathbb{R}^{k})$ such that 
$\mu(A) < \delta$.*

**Proof:** \
(Definition 1 >> Definition 2) Let $\epsilon > 0$. Choose $T > 0$ such that
$\sup_{\lambda}\int\ |f_{\lambda}|\cdot I(|f_{\lambda}| > T)\ d\mu < \epsilon / 2$. 
Then let $\delta := \epsilon / 2T$. Thus, for $A \in \mathcal{B}(\mathbb{R}^{k})$ with 
$\mu(A) < \delta$,
$$ \int_{A} |f_{\lambda}|\ d\mu = \int_{A\cap \{|f_{\lambda}| > T\}}|f_{\lambda}|\ d\mu + 
\int_{A\cap \{|f_{\lambda}| \leq T\}}|f_{\lambda}|\ d\mu \leq 
\int_{\{|f_{\lambda} > T\}} |f_{\lambda}|\ d\mu + \frac{\epsilon}{2T}T < \epsilon $$
for all $\lambda \in \Lambda$. 
$$\tag*{$\blacksquare$ (>>)}$$

(Definition 1 << Definition 2) Now suppose $\{f_{\lambda} : \lambda \in \Lambda\}$ 
satisfies Definition 2. Then it suffices to show that $\sup_{\lambda}\mu(\{|f_{\lambda}| > t\}) \rightarrow 0$ and $t \rightarrow \infty$. By way of contradiction, suppose there exists 
$\epsilon > 0$ such that for all $t > 0$, there exists $\lambda \in \Lambda$ such that $\mu(\{|f_{\lambda}| > t\}) \geq \epsilon$. 
By assumption we can choose $\delta > 0$ such that $\eqref{eq:def2}$ is satisfied. 
Then for each $n \in \mathbb{N}$, there exists $\lambda_{n} \in \Lambda$ such that 
$\mu(\{|f_{\lambda_n}| > n\}) \geq \epsilon$. But then by assumption we can choose $\{E_{n}\}_{n=0}^{\infty}$ such 
that $E_n \in \mathcal{B}(\mathbb{R}^{k})$,  $\mu(E_n) = \delta / 2$, and $|f_{\lambda_n}(x)| > n$ for all $x \in E_n$ (* see notes below). Now choose $N$ such that 
$N \geq \frac{2\epsilon}{\delta}$, then
\begin{equation}
\int_{E_{N}}|f_{\lambda_{N}}|\ d\mu \geq \int_{E_N} N \ d\mu = N\cdot \frac{\delta}{2} \geq 
\epsilon.
\label{eq:1}
\end{equation}
This is a contradiction. 
$$\tag*{$\blacksquare$ (<<)}$$
$$\tag*{$\Box$}$$

> \* One property of Lebesgue measure on $\mathbb{R}^{k}$ is that if $\mu(A) = R > 0$, then for all $0 < r < R$, 
there exists a Borel set $E \subset A$  such that $\mu(E) = r$. 
In a general measure space $(X, \mathcal{S}, \mu)$ where $\mu$ does not have this property,
definitions 1 and 2 may not be equivalent. For example, consider the measure space 
$(\mathbb{N}, \mathcal{P}(\mathbb{N}), c)$, where $c$ is the counting measure.
Let $f_n$, $n \in \mathbb{N}$, be defined by 
$$ f_n(\omega) = \left\{\begin{array}{cl}
0 & \omega \neq n \\
n & \omega = n
\end{array} \right..$$
Then for any $\epsilon > 0$, $\{f_n : n\in \mathbb{N}\}$ satisfies $\eqref{eq:def1}$ 
with $\delta = 1/2$ since $\emptyset$ is the only measurable set with measure less than $1/2$.
However,
$$ \lim_{t\rightarrow\infty}\sup_{n}\int_{\{|f_{n}| > t\}}|f_{n}|\ dc \geq 
\lim_{k\rightarrow\infty}\int_{\{|f_{k-1}| > k\}}|f_{k-1}|\ dc = \lim_{k\rightarrow\infty}k = \infty.$$
