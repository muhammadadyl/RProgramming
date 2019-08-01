# Q3 An orbiting satellite has 3 panels of solar cells, all of which must be active to provide an adequate
# power output. The panels function independently of one another. The chance that a single panel will
# fail during the mission is 0.02. What is the probability that there will be adequate power output during
# the entire mission time? (This probability is called the reliability of the system.)

# success probability out of failure for one cell
successProb = 1 - .02

# if any one fails, it will not have adequate power, So the answer is
dbinom(3, 3, successProb)
