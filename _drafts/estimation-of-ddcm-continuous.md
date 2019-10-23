---
layout: page
title: Estimation of Dynamic Discrete Choice Models in Continuous Time with an Application to Retail Competition
mathjax: true
tags: [retail, methods]
---

# Arcidiacono, Bayer, Blevins, and Ellickson: Restud (2016)

Industrial Organization is obsessed with estimating discrete choice models.  There is a large body of literature starting with [Rust](http://www.its.caltech.edu/~mshum/stats/rust.pdf) on how to solve these problems.  In particular people have focused on estimating *dynamic* discrete choice models.  These can be difficult to estimate because in addition to finding structural parameters one must estimate the value function.  [Hotz and Miller](https://www.jstor.org/stable/2298122) recognized that rather than solving a fixed point problem to estimate the value function and state transition probabilities one could read the state transitions off the data.

This was a promising approach, but you still run into problems when the state space or action space are large.  That is where this paper comes in.  In particular they show that casting the problem in continuous time has a number of advantages.
1. Only one agent moves at a time.  Thus the action space is small.
2. From each current state only a small number of states are directly attainable.  This is useful because you don't have to take a stand on transition probabilities between states that don't occur in the data.

The paper consists of two parts.  In the first part they show how their continuous time setup compares to discrete time setups both full solution methods and methods that use conditional choice probabilities.  In this part they show the asusmptions under which they can obtain consistent estimates of structural parameters even with discrete time data.  They also show that if there is some terminal state that is reachable from any other state you can really simplify value function estimation.  Finally, they show how to incorporate unobserved heterogeneity into their model following (cite my post).

In the second part the apply their methods to the entry of Walmart in the grocery business.  They find that Walmart more negatively affected chain grocery stores than single unit stores.  They argue the incorporating permanent unobserved heterogeneity is crucial to obtaining consistent estimates of these results.

<!--more-->

# Contributions

Previous papers have been able to estimate models using CCPs without too much trouble, but they struggle in counterfactuals.  Once you recover the structural parameters you have to simulate choices for all of the agents in the model.  This is difficult in discrete time models because everyone moves at onces.  In their model only one agent moves at a time.  This significantly eases computation of counterfactuals and also eliminates simultaneous moves as a source of multiple equilibria.


# General Setup


They consider a problem where \\(k\\) is the state of a market and \\(i\\) is an agent.  The value function of a player depends on flow payoffs, instantaneous payoffs from choices,  \\(u_{ik}\\), the probability nature and other players make decisions that move the state, and the choices the player plans to make in the future.  Each player randomly gets a chance to move with arival rate \\(\lambda\\).

They assume the state space is finite, everything is bounded, and that the instantaneous payoff associated with an action is separable into a component that is 0 if the agent makes a continuation choice.


# Estimation

Estimation takes place in two steps.  In the first you estimate CCPs.  In the second you use those estimates to recover structural parameters.


# Challenges

This methodology adds additional complexity when you are estimating CCPs when you have entities with different policy functions.  With discrete time estimation of CCPs you can estimate the CCPs without worrying about the other player's policy functions.  Essentially you look at the state today and how often you make each choice and that is the estimate of your policy function.  This means that if you are doing a non-parametric estimation of the policy functions the other players parameters don't matter during the CCP step. This is different with discrete time data and a continuous model.  Now you have to simulate what happened during the year including the order and time at which each player got to move.  Thus the objective function is not separable in the types of players.  This causes the parameter space in the CCP estimation to get large quite quickly.  You have an advantage that the objective function is fairly well behaved, but it can still take a considerable amount of time to estimate the function.

# Discrete Time vs Continuous Time
