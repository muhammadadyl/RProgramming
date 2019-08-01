# Q4 In a study of the coexistence of two types of insects, let X and Y denote the number of type A and type
# B insects, respectively, that reside on the same plant. From observations of a large number of plants,
# suppose that the following joint probability distribution is assessed for the insect counts per plant.


# x→y↓| 1    2    3    4
# --------------------------
#  0  | 0    0.05 0.05 0.10
#  1  | 0.08 0.15 0.10 0.10
#  2  | 0.20 0.12 0.05 0

# marginal X | .28 .32 .20 .20
# marginal Y | .20 .43 .37


# (a) Find the probability that there are more type B insects than type A insects on a plant.

# Omitting (0,1) (2,4) Plants, since they both are 0 for Type B and Type A insects

# P(Y|X) for (1, 1) = X intersection Y / X
.08/.28 > .28

# P(Y|X) for (2, 1) = X intersection Y / X
.20/.28 > .28

# P(Y|X) for (0, 2) = X intersection Y / X
.05/.32 > .32

# P(Y|X) for (1, 2) = X intersection Y / X
.15/.32 > .32

# P(Y|X) for (2, 2) = X intersection Y / X
.12/.32 > .32

# P(Y|X) for (0, 3) = X intersection Y / X
.05/.20 > .20

# P(Y|X) for (1, 3) = X intersection Y / X
.10/.20 > .20

# P(Y|X) for (2, 3) = X intersection Y / X
.05/.20 > .20

# P(Y|X) for (2, 2) = X intersection Y / X
.12/.32 > .32

# P(Y|X) for (0, 4) = X intersection Y / X
.10/.20 > .20

# P(Y|X) for (1, 4) = X intersection Y / X
.10/.20 > .20

## Since only on plant (0,2) has more Type A insects Probability then Type B indicated by False in results, While Rest of the plants have Type B insects Probability indicated by TRUE in results

# (b) Compute µx, µy, σx, σy and Cov(X, Y).

xi = 1:4
x = c(.28, .32, .20, .20)
yj = 0:2
y = c(.20, .43, .37)

# µx
mx = sum(xi*x)
mx

# µy
my = sum(yj*y)
my

# σx
varx = sum((xi^2)*x) - mx^2
varx

# σy
vary = sum((yj^2)*y) - my^2
vary

mxy = sum(
  1*1*.08, 1*2*.20,
  2*1*.15, 2*2*.12,
  3*1*.10, 3*2*.05,
  4*1*.10, 4*2*0
)

# Cov(X, Y)
covXY = mxy - mx*my
covXY
