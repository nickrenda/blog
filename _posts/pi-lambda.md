---
layout: post
title: The Pi-Lambda Theorem
subtitle: The little theorem you wish you never heard of
share-img: https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Pi-symbol.svg/2000px-Pi-symbol.svg.png
---

First off, let me come clean by saying that the $\pi-\lambda$ theorem has nothing to do with the irrational number $\pi$.
Instead, it has to do with special classes of sets called $\pi$-classes, $\lambda$-classes, and $\sigma$-algebras.
I will define what all of these things mean in a moment, but first let me explain why we care about the $\pi-\lambda$ theorem.

## Table of contents

- [Introduction](#introduction)
- [Definitions](#definitions)


# Introduction

## Introduction to measures

> I encourage you to skip this subsection if "Lebesgue measure" sounds vaguely familiar.

A **measure** is a generalization of the concept of length, or area, or volume. For example, the Lebesgue measure of an
interval corresponds to its length, the Lebesgue measure of a square corresponds to its area, and the Lebesgue measure
of a cube corresponds to its volume $(*)$. But length, area, and volume fall short of describing more general sets, such as the 
rational numbers $\mathbb{Q}$ in $\mathbb{R}$. How would you describe the length of the rationals? You can't. That's where
measures pick up. 

Measures are defined on a class of sets called a $\sigma$-algebra. Lebesgue measure, in particular, is defined 
on the Borel $\sigma$-algebra of $\mathbb{R}^{n}$. Now, one method of constructing a measure is to start by
defining a set function called a **pre-measure** or **outer measure** on a smaller class of sets, and then extending that function
to a measure on a $\sigma$-algebra.

For example, $\mathbb{Q}$ is a member of the Borel $\sigma$-algebra, but it is not obvious how we should define the Lebesgue measure of $\mathbb{Q}$.
Instead, we start by intuitively defining Lebesgue *outer* measure on the set of intervals. Since you already know that the Lebesgue measure
of an interval corresponds to its length, it makes sense that the Lebesgue outer measure of an interval should be its length.
Lebesgue outer measure can then be extended through a process called the Caratheodory extension to a measure defined on all
of the Borel sets, including $\mathbb{Q}$.

The natural question to ask is if we start with an pre-measure or outer measure on a smaller class of sets, is there more than
one way to extend it to a measure on a $\sigma$-algebra? The answer to that is no, the extension is necessarily unique provided
the measure is [$\sigma$-finite](https://en.wikipedia.org/wiki/%CE%A3-finite_measure).

> $(*)$


# Definitions
