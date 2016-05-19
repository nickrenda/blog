We will prove the equivalence of the two following definitions of uniform integrability.

Suppose $(X, \mathcal{S}, \mu)$ is a measure space and $\{f_{\lambda} : \lambda \in \Lambda\}$ is a family of complex-valued measurable functions on $X$.

**Def 1:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ if* 
$$ \lim_{t\rightarrow\infty} \sup_{\lambda} \int\ |f_{\lambda}|\cdot I(|f_{\lambda}| > t) \ d\mu = 0. $$ {#eq:def1}

**Def 2:** *The family $\{f_{\lambda} : \lambda \in \Lambda\}$ is said to be __uniformly integrable__ if for all $\epsilon > 0$, there exists $\delta > 0$ such that*
$$ \sup_{\lambda} \int_{A}\ |f_{\lambda}| \ d\mu < \epsilon $$ {#eq:def2}
*whenever $A \in \mathcal{S}$ such that $\mu(A) < \delta$.*
