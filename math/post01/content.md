We will prove the equivalence of the two following definitions of uniform integrability.

Suppose $(X, \mathcal{S}, \mu)$ is a measure space and $\{f_{\lambda} : \lambda \in \Lambda\}$ is a family of complex-valued measurable functions on $X$.

**Def 1:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ if* 
$$ \lim_{t\rightarrow\infty} \sup_{\lambda} \int_{\{|f_{\lambda}| > t\}} |f_{\lambda}|\ d\mu = 0. $$

**Def 2:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ if for all $\epsilon > 0$, there exists $\delta > 0$ such that*
$$ \sup_{\lambda} \int_{A}\ |f_{\lambda}| \ d\mu < \epsilon $$
*whenever $A \in \mathcal{S}$ such that $\mu(A) < \delta$.*

**Proof.** 

(Definition 1 >> Definition 2) Let $\epsilon > 0$. Choose $T > 0$ such that
$\sup_{\lambda}\int\ |f_{\lambda}|\cdot I(|f_{\lambda}| > T)\ d\mu < \epsilon / 4$. 
Then let $\delta := \epsilon / 4T$.

\begin{equation}
x^{2}
\label{eq:sample}
\end{equation}
