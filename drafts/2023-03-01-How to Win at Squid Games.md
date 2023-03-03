---
layout: page
title: "Winning at Squid Games"
description: 
sitemap: false
hide_last_modified: false
---

The TV show Squid Games took the world by storm in 2021. All the more surprising was that it was a hit in America, even though it was originally shot in Korean. The show displays a Hunger Games type life and death contest between people down on their luck. If you lose, you get eliminated, literally.

One of the games that the players compete in is a marble game that I had never seen before, but perhaps is quite popular in Korea. The game has two players, each starting with 10 marbles. The players take turns guessing how many marbles the other player has placed into their hand, only they don't guess the actual number, only if the number is even or odd. They also wager a certain amount of their own marbles. If they guess correctly, they win back the same number as they wagered, if not they lose the wager to the other player.

At first glance, it may appear that there is no way to gain an edge over the other player. If the odd are 50/50 on any try, how would you gain an edge? This is the question we hope to answer. We will use simulation to test out a couple of strategies. I learned these strategies reading the book "Chance" by Amir Aczel. It's a fun little book that is a great, quick read for students of mathematics and science. The strategies are shown below

- Random guesses, random wagers - each time you either have to guess or wager, you guess randomly and wager a random amount of your remaining marbles. We should expect this strategy to give 50/50 odds in the end over multiple games.
- Double your wager each loss - You start by wagering just one marble when it is your turn to guess. If you lose, you double the wager each time until you win. The logic behind this is that you can recover your sunk losses because you are upping the wager to cover the difference. For example, in a sequence of 3 wagers, if you lose the first two then win on the third, the payout is as follows

1(-1) + 2(-1) + 4(1) = 1

This pattern assumes that you have a relatively large pool to wager, see how it breaks down after 3 sequential losses...

1(-1) + 2(-1) + 4(-1) + 3(1) = -4

Since 3 sequential losses is a rarer event, this strategy could still have merit. The one caveat is that you are supposed to quit playing once you come out on top the first time, to limit your downside exposure. Since that is not an option in this game, as it continues until one player has all of the marbles, it's less likely this is a winning strategy. But we will test nonetheless!


- Wager 50% of remaining - since you can't change the probability of having a correct guess, let's manipulate the wager in a smart way. Getting an early lead in marble disparity can help you to create momentum that will be hard to overcome for the other player. So let's make our wager 50% of our remaining marbles, every time we wager.

## Python Implementation

I generated a python script to run these simulations and establish which is a winning bet. The code for the Random Guess strategy is shown below

~~~python
x=1
print(x)
~~~

Here are the results from the simulations

Strategy A: 50/50
Strategy B: 
Strategy C