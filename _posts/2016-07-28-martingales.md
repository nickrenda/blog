---
layout: post
title: Martingales
subtitle: What the hell are they? Part 1
tags: [probability-theory, martingales]
published: false
---

This article discusses the basic concepts and properties of discrete parameter martingales, otherwise referred to as
discrete-time martingales. In this context a *martingale* is a stochastic process (a sequence of random variables) with the
property that the expectation of the next random variable in the sequence given the information an all present and past random
variables is equal to the value of the present random variable, i.e. $E(X_{n+1} | X_{1}, ..., X_{n}) = X_{n}$.

Due to this property, martingales can be used to model fair gambling games. For example, suppose we play a game where
you flip a coin: if the coin lands with heads up, you win a dollar, and if the coin lands and tails up, you lose a dollar.
Let $X_{n}$ be the random variable that represents your net earnings / losses after the $n^{th}$ coin flip. If after
$n$ flips you have netted $x$ dollars, your expected gain / loss on the next flip is still 0, so 
$E(X_{n+1} | X_{1}, ..., X_{n}) = x = X_{n}$.

Now in order to discuss martingales in a formal setting we need to be familiar with the concept of conditional expectation.
To that end I have provided a brief review below. Otherwise I only assume the reader has a basic familiarity with measure theory.

## Table of contents

- [Review of conditional expectation](#review-of-conditional-expectation)
- [Basic definitions and examples](#basic-definitions-and-examples)
- [Properties](#properties)
- [References](##references)

---

# Review of conditional expectation

**Definition 1:**  Suppose $(\Omega, \Sigma, P)$ is a probability space and $\Sigma_{0} \subseteq \Sigma$ is a sub-$\sigma$-algebra of $\Sigma$ 
(which is to say $\Sigma_{0}$ is a $\sigma$-algebra and is a subset of $\Sigma$). 

1. If $Y$ is an $\Sigma$-measurable random variable so that either $Y \geq 0$ almost surely (a.s.) or 
$Y \in L^{1}(\Omega, \Sigma, P)$, the *conditional expectation of $Y$ given
$\Sigma_{0}$* is the $\Sigma_{0}$-measurable function $E(Y|\Sigma_{0}) \equiv E(Y|\Sigma_{0})(\omega)$ for which 
\begin{equation}
\int_{A}Y\ dP = \int_{A}E(Y|\Sigma_{0})\ dP
\label{1.0}
\end{equation}
for all $A \in \Sigma_{0}$.
2. For any $E \in \Sigma$, the *conditional probability of $E$ given $\Sigma_{0}$* is defined as $P(E\|\Sigma_{0}) := E(\chi_{E}\|\Sigma_{0})$,
where $\chi_{E}$ is the characteristic function of $E$.

> NOTE: I am being a little sloppy when I say $E(Y|\Sigma_{0})$ is THE function that satisfies these conditions.
There could be infinitely many such functions, but they must all be equal a.s. by \eqref{1.0}.

**Example 2:** Suppose $\Sigma_{0} = \Sigma$. What is $E(Y\|\Sigma_{0})$?

**Example 3:** Suppose $\Sigma_{0} = \lbrace\emptyset, \Omega\rbrace$. What is $E(Y\|\Sigma_{0})$?

<button class="btn btn-default" onclick="$('#example2-sol').toggle();">
    Show solutions
</button>
<div id="example2-sol" class="well" style="display: none">
Example 2: Note that $Y$ is $\Sigma_{0}$-measurable and $\int_{A}Y\ dP = \int_{A}Y\ dP$ trivially for all $A \in \Sigma_{0} = \Sigma$. Hence $Y = E(Y|\Sigma_{0})$ 
a.s.
<p></p>
Example 3: In this case the only class of $\Sigma_{0}$-measurable functions is constant functions, and the only constant that satisfies \eqref{1.0} is $E(Y)$.
</div>

# Basic definitions and examples

**Definition 2:** Let $(\Omega, \Sigma, P)$ be a probability space and $X_{0}, X_{1}, ...$ random variables on $(\Omega, \Sigma, P)$ with $E\|X_{n}\| < \infty$ for all $n \in \mathbb{N}$. Let $\Sigma_{0} \subseteq \Sigma_{1}\subseteq...$ be sub-$\sigma$-algebras of $\Sigma$.

1. We say the sequence of $\sigma$-algebras $\lbrace\Sigma_{n}\rbrace_{n=0}^{\infty}$ is a *filtration*.
2. The sequence of random variables $\lbrace X_{n}\rbrace_{n=0}^{\infty}$ is called *adapted* to the filtration $\lbrace\Sigma_{n}\rbrace_{n=0}^{\infty}$ if $X_{n}$ is measurable with respect to $\Sigma_{n}$ for each $n \in \mathbb{N}$.

**Definition 3:** Suppose $\lbrace X_{n}\rbrace_{n=0}^{\infty}$ is adapted to the filtration $\lbrace \Sigma_{n}\rbrace_{n=0}^{\infty}$ on the probability space $(\Omega, \Sigma, P)$. 

1. Then the collection $\lbrace (X_{n}, \Sigma_{n})\rbrace_{n=0}^{\infty}$ is called a *martingale* if $E(X_{n+1}\|\Sigma_{N}) = X_{n}$ for all $n \in \mathbb{N}$.
2. Similarly,


# Properties

## References

1. Course notes, STAT 642 Spring 2016, Iowa State University
2. Athreya, K.B., and S.N. Lahiri, Measure Theory and Probability Theory
