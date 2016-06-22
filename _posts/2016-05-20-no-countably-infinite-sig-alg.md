---
layout: post
title: Why there is no countably infinite sigma algebra
---

A $\sigma$-algebra $\mathcal{F}$ over a set $\Omega$ is a collection of subsets of $\Omega$ such that

1. $\emptyset \in \mathcal{F}$,
2. $\Omega - A \in \mathcal{F}$ whenever $A \in \mathcal{F}$, and 
3. $\cup_{n=0}^{\infty}A_{n} \in \mathcal{F}$ whenever $A_{0}, A_{1}, A_{2},... \in \mathcal{F}$.

The concept of a $\sigma$-algebra provides a starting point for measure theory. 
Of course $\sigma$-algebras can be finite, like the 
trivial example $\mathcal{F} := \lbrace \Omega, \emptyset\rbrace$, or uncountably infinite (in most 
circumstances), like the [Borel $\sigma$-algebra](https://en.wikipedia.org/wiki/Sigma-algebra#Borel_and_Lebesgue_.CF.83-algebras) 
over the reals which contains all open sets in $\mathbb{R}$. However, a surprising consequence of the
definition is that *countably* infinite $\sigma$-algebras cannot exist, as we will now prove.


$Proof.$ By way of contradiction, suppose there exists a set $\Omega$ and a countably infinite $\sigma$-algebra $\mathcal{F}$ over $\Omega$.
The objective right now will be to construct a countably infinite disjoint collection of sets in $\mathcal{F}$ such that every set in
$\mathcal{F}$ can be expressed as the unique union of a subset of that collection. Once such a set is constructed, a contradiction easily follows by
using Cantor's diagonal argument.

To accomplish this, we first define the function $f : \Omega \rightarrow \mathcal{F}$, by 
$$ f(x) := \bigcap\lbrace E : E\in \mathcal{F}, x \in E\rbrace, $$
for all $x \in \Omega$. Since $\mathcal{F}$ is countable by assumption, $f(x) \in \mathcal{F}$ for all $x \in \Omega$.

**Claim 1:** The image of $f$, $\left\lbrace  A : A = f(x), x \in \Omega \right\rbrace$, is a disjoint collection of sets.

*Proof of Claim 1:* Let $x, y \in \Omega$. We need to show that $f(x) = f(y)$ or $f(x) \cap f(y) = \emptyset$. 
In order to derive a contradiction, assume that $f(x) \neq f(y)$ and $f(x) \cap f(y) \neq \emptyset$. 
Then there are two cases to consider. Either (i) $x \in f(x) \setminus f(y)$, or (ii) $x \in f(x) \cap
f(y)$.

(i) Assume $x \in f(x) \setminus f(y)$.
Since $f(x), f(y) \in \mathcal{F}$, $f(x) \setminus f(y) \in \mathcal{F}$. So, $x \in f(x) \setminus f(y) \subset
f(x)$, which is a contradiction since $f(x)$ is the smallest set in $\mathcal{F}$ that contains $x$.

(ii) Now assume that $x \in f(x) \cap f(y)$.
Well, $f(x) \cap f(y) \in \mathcal{F}$ and $f(x) \cap f(y) \subset f(x)$, which brings us to a contradiction again. 

Since both cases lead to a contradiction, the image of $f$ must be a disjoint collection of sets.
$$\tag*{$\blacksquare$ Claim 1}$$

**Claim 2:** Every set $B \in \mathcal{F}$ can be expressed as the countable union of a subset of the image of $f$. Further, this
representation of $B$ is unique in the sense that there is only one collection of sets in $\left\lbrace  f(x): x \in \Omega \right\rbrace$ such that
$B$ is their union.

*Proof of Claim 2:* Let $B \in \mathcal{F}$, and let $x \in B$. Clearly $x \in f(x) \subseteq \bigcup\left\lbrace  f(y) : y \in B \right\rbrace$. 
So $B \subseteq \bigcup\lbrace  f(y) : y \in B \rbrace$. 
Further, $f(x) \subseteq B$ because if that was not true then $f(x) \cap B$ would be a smaller set in
$\mathcal{F}$ that contains $x$, which is a contradiction. So $f(x) \subseteq B$ for each $x \in B$. 
Therefore $\bigcup \lbrace f(y) : y \in B \rbrace \subseteq B$. Hence $B = \bigcup\lbrace f(y) : y \in B\rbrace$.

The fact that $\left\lbrace  f(y) : y \in B \right\rbrace$ is the unique collection of sets in $\left\lbrace f(x): x \in \Omega \right\rbrace$ such that 
$B$ is their union follows directly as a result of Claim 1, 
that the image of $f$ is a pairwise disjoint collection of sets.
$$\tag*{$\blacksquare$ Claim 2}$$

**Claim 3:** The image of $f$, $\left\lbrace  f(x): x \in \Omega \right\rbrace$, is countably infinite.

*Proof of Claim 3:* Since $\left\lbrace f(x): x \in \Omega \right\rbrace$ is a subset of $\mathcal{F}$, it cannot be uncountable. 
On the other hand, if $\left\lbrace f(x): x \in \Omega \right\rbrace$
was finite, then its power
set would be finite. Thus, by Claim 2, $\mathcal{F}$ would be finite since every set in $\mathcal{F}$ can be expressed as the unique union of sets
in $\left\lbrace  f(x): x \in \Omega \right\rbrace$. This is a contradiction. Hence $\left\lbrace f(x): x \in \Omega \right\rbrace$ is countably infinite.
$$\tag*{$\blacksquare$ Claim 3}$$

As a result of Claim 3, we can enumerate $\left\lbrace f(x): x \in \Omega \right\rbrace$ as 
$$ \left\lbrace f(x): x \in \Omega \right\rbrace = \left\lbrace  A_{n} \right\rbrace_{n\in\mathbb{N}}. $$
Now, let $\left\lbrace  0,1 \right\rbrace^{\omega}$ be the set of all countably infinite sequences of 0's and 1's. Define 
$$ g: \left\lbrace  0,1 \right\rbrace^{\omega} \longrightarrow \mathcal{F} $$
by 
$$ g\left( \left( a_{n} \right)_{n\in\mathbb{N}} \right) := \bigcup_{\lbrace n : a_{n} = 1\rbrace}A_{n}, \text{ for each } \left( a_{n} \right)_{n\in\mathbb{N}}
\in \left\lbrace  0,1 \right\rbrace^{\omega}. $$
Note that $g$ is well-defined since $\cup_{\lbrace n:a_{n}=1\rbrace}A_{n}$ is a countable union of sets in $\mathcal{F}$, and $\mathcal{F}$ is closed under
countable unions.

**Claim 4:** $g$ is a bijection.

*Proof of Claim 4:* By Claim 1, $\left\lbrace  A_{n} \right\rbrace_{n\in\mathbb{N}}$ 
is a disjoint collection of sets, so the union
of any collection of sets in $\left\lbrace  A_{n} \right\rbrace_{n\in\mathbb{N}}$ is unique. Thus $g$ is one-to-one. Further, it follows as a corollary to Claim
2 that $g$ is onto, since any set $B \in \mathcal{F}$ can be expressed as the union of sets in $\left\lbrace  A_{n} \right\rbrace_{n\in\mathbb{N}}$. Hence $g$ is a bijection.
$$\tag*{$\blacksquare$ Claim 4}$$

To wrap up, [Cantor's diagonal argument](https://en.wikipedia.org/wiki/Cantor%27s_diagonal_argument) 
for the uncountability of the interval $[0,1]$ establishes that $\left\lbrace  0,1 \right\rbrace^{\omega}$ is uncountable.
This is where the contradiction arises, since by Claim 4 $\mathcal{F}$ has to be uncountable.

Therefore there does not exist a countably infinite $\sigma$-algebra over the reals.
$$\tag*{$\Box$}$$
