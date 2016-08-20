---
layout: post
title: The Gamma Function
subtitle: Proving holomorphicity and other properties
share-img: https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Factorial_Interpolation.svg/720px-Factorial_Interpolation.svg.png
tags: [analysis, complex-analysis]
---

The gamma funcion $\Gamma$ is a special function in mathematical analysis. For complex $z$ in the right half plane, we define
\begin{equation}
\Gamma(z) := \int_{0}^{\infty}t^{z-1}e^{-t}dt.
\label{eq1}
\end{equation}
It turns out that $\Gamma$ is holomorphic and satisfies $\Gamma(z + 1) = z\Gamma(z)$ for all $z$ with Re $z > 0$. 
This last propoerty means that the gamma function can be thought of as a generalization of the 
[factorial function](https://en.wikipedia.org/wiki/Factorial) to real and complex numbers. To be more precise,
if $n$ is an integer then $\Gamma(n) = (n-1)!$.

**Proposition 1:** $\Gamma$ is holomorphic in the right half plane.

$Proof.$
First let's establish the fact the that integral in \eqref{eq1} is well-defined on its domain. Let $z \in \mathbb{C}$ such 
that $x :=$ Re $z > 0$. Then for large enough $T > 0$,

$$ \begin{align*}
\int_{0}^{\infty}|t^{z-1}e^{-t}|dt & = \int_{0}^{\infty}t^{x-1}e^{-t}dt  \\
& \leq \int_{0}^{T}t^{x - 1}dt + \int_{T}^{\infty}e^{(x-1)\log t - t}dt \\
& \leq \int_{0}^{T}t^{x-1}dt + \int_{T}^{\infty}e^{t/2 - t}dt < \infty.
\end{align*} $$

Hence $\Gamma(z)$ is well-defined. Now let 
$$ f_{n}(z) := \int_{1/n}^{n}t^{z-1}e^{-t}dt. $$
We aim to show that each $f_{n}$ is holomorphic in the right half plane and that $f_{n} \rightarrow \Gamma$ uniformly on compact subsets.
From there it follows that $\Gamma$ is holomorphic.

**Claim 1:** Each $f_{n}$ is holomorphic in the right half plane. \\
*Proof of Claim 1:* We will use [Morera's Theorem](https://en.wikipedia.org/wiki/Morera%27s_theorem). Let $\gamma : [0,1] \rightarrow \mathbb{C}$ be a $C^{1}$ 
closed curve in the right half plane.
It's easy to see that $f_{n}$ is integrable over $\gamma$, and thus we can justify using Fubini's Theorem to interchange the order of the integrals:

$$ \begin{align*}
\oint_{\gamma}f_{n}(z)dz & = \oint_{\gamma}\int_{1/n}^{n}t^{z-1}e^{-t}dt\ dz \\
& = \int_{0}^{1}\int_{1/n}^{n}t^{\gamma(s) - 1}e^{-t} \cdot \frac{d\gamma}{ds}(s)\ dt\ ds \\
& = \int_{1/n}^{n}\int_{0}^{1}t^{\gamma(s) - 1}e^{-t} \cdot \frac{d\gamma}{ds}(s)\ ds\ dt \\
& = \int_{1/n}^{n} \oint_{\gamma} t^{z-1}e^{-t}dz\ dt = 0,
\end{align*} $$

since $t^{z-1}e^{-t}$ is holomorphic for all $z$ in the right half plane and $t > 0$. Thus each $f_{n}$ is holomorphic.
$$\tag*{$\blacksquare$ Claim 1}$$

**Claim 2:** $f_{n} \rightarrow \Gamma$ on compact subsets of the right half plane. \\
*Proof of Claim 2:* Let $K$ be a compact subset of the right half plane. Let $x_{0} := \min\lbrace \text{Re } z : z \in K\rbrace$ and 
$x_{1} := \max\lbrace \text{Re } z : z \in K\rbrace$.
Then

$$ \begin{align*}
\|f_{n}(z) - \Gamma(z)\| & \leq \int_{0}^{1/n}|t^{z-1}e^{-t}|dt + \int_{n}^{\infty}|t^{z-1}e^{-t}|dt \\
& \leq \int_{0}^{1/n}t^{x_{0} - 1}e^{-t}dt + \int_{n}^{\infty}t^{x_{1} - 1}e^{-t}dt.
\end{align*} $$

Since both integrals above tend to 0 as $n \rightarrow \infty$ independent of $z \in K$, we are done!
$$\tag*{$\blacksquare$ Claim 2}$$
$$\tag*{$\Box$}$$


**Proposition 2:** $\Gamma(z + 1) = z\Gamma(z)$ for all $z$ in the right half plane.

$Proof.$ First we will establish the proposition for all real $x > 0$. \\
**Claim 1:** $\Gamma(x + 1) = x\Gamma(x)$ for all $x > 0$. \\
*Proof of Claim 1:* Let $x > 0$. Then using integration by parts,

$$ \begin{align*}
\int_{0}^{\infty}t^{(x+1)-1}e^{-t}dt & = -t^{x} e^{-t}\bigg|_{0}^{\infty} + \int_{0}^{\infty}xt^{x-1}e^{-t}dt \\
& = x\Gamma(x).
\end{align*} $$

$$\tag*{$\blacksquare$ Claim 1}$$

Now, since $\Gamma(z + 1)$ and $z\Gamma(z)$ are holomorphic by Proposition 1 and equal on the real line by Claim 1, $\Gamma(z + 1) \equiv z\Gamma(z)$ by
the identity theorem (Greene & Krantz Theorem 3.6.1).
$$\tag*{$\Box$}$$


### References

1. Greene, R.E, and S.G. Krantz, *Function Theory of One Complex Variable*, Third Edition
