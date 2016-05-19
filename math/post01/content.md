We will prove the equivalence of the two following definitions of uniform integrability
with respect to Lebesgue measure $\mu$.

Suppose $\{f_{\lambda} : \lambda \in \Lambda\}$ is a family of complex-valued measurable functions on $\mathbb{R}$.

**Def 1:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ if* 
\begin{equation}
\lim_{t\rightarrow\infty} \sup_{\lambda} \int_{\{|f_{\lambda}| > t\}} |f_{\lambda}|\ d\mu = 0. 
\label{eq:def1}
\end{equation}

**Def 2:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ if for all $\epsilon > 0$, there exists $\delta > 0$ such that*
\begin{equation}
\sup_{\lambda} \int_{A}\ |f_{\lambda}| \ d\mu < \epsilon
\label{eq:def2}
\end{equation}
*whenever $A \in \mathcal{B}(\mathbb{R})$ such that $\mu(A) < \delta$.*

**Proof.** \
(Definition 1 >> Definition 2) Let $\epsilon > 0$. Choose $T > 0$ such that
$\sup_{\lambda}\int\ |f_{\lambda}|\cdot I(|f_{\lambda}| > T)\ d\mu < \epsilon / 4$. 
Then let $\delta := \epsilon / 4T$. Thus, for $A \in \mathcal{B}(\mathbb{R})$ with 
$\mu(A) < \delta$,
$$ \int_{A} |f_{\lambda}| d\mu = \int_{A\cap \{|f_{\lambda}| > T\}}|f_{\lambda}|d\mu + 
\int_{A\cap \{|f_{\lambda}| \leq T\}}|f_{\lambda}|d\mu \leq 
\int_{\{|f_{\lambda} > T\}} |f_{\lambda}|d\mu + \frac{\epsilon}{4T}T < \frac{\epsilon}{2} $$
for all $\lambda \in \Lambda$. Hence $\sup_{\lambda}\int_{A}|f_{\lambda}|d\mu \leq \epsilon / 2 < \epsilon$. $\blacksquare$ (>>)

(Definition 1 << Definition 2) Now suppose $\{f_{\lambda} : \lambda \in \Lambda\}$ 
satisfies Definition 2. It suffices to show that $\sup_{\lambda}\mu(\{|f_{\lambda}| > t\}) \rightarrow 0$ and $t \rightarrow \infty$. By way of contradiction, suppose there exists $\epsilon > 0$ such that for all $t > 0$, there exists $\lambda \in \Lambda$ such that $\mu(\{|f_{\lambda}| > t\}) \geq \epsilon$. 
By assumption we can choose $\delta > 0$ such that $\eqref{eq:def2}$ is satisfied. 
Then for each $n \in \mathbb{N}$, 
$\blacksquare$ (<<)
$\Box$ (proof)

These two definitions are not equivalent over more general measure spaces, however.
