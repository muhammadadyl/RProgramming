# Q2 J.J. Thomson (1856–1940), discovered the electron while investigating the basic nature of cathode rays.
# In laboratory experiments Thomson isolated negatively charged particles for which he could determine
# the mass-charge ratio. This ratio appeared to be constant over a wide variety of experimental conditions
# and to be a characteristic of these new particles. Thomson obtained the following results with two
# different cathode ray tubes, using air as the gas:
  
# Tube 1 | 0.57 0.34 0.43 0.32 0.48 0.40 0.40
# Tube 2 | 0.53 0.47 0.47 0.51 0.63 0.61 0.48

# (a) Do the two tubes appear to produce consistent results?
tube1 = c(.57, .34, .43, .32, .48, .40, .40)
tube2 = c(.53, .47, .47, .51, .63, .61, .48)

meanTube1 = mean(tube1)
meanTube2 = mean(tube2)

resultDiff = meanTube2 - meanTube1

## Result of 2 tubes mean
resultDiff

allTogether = c(tube1, tube2)

result=0
for (i in 1:10000) {
  mixedTogether = sample(allTogether)
  tube1R = mixedTogether[1:7]
  tube2R = mixedTogether[8:14]
  result[i]= mean(tube1R) - mean(tube2R)
}

hist(result)

## After running above calculation, we came to conclusion that Results are NOT CONSISTENT, 
## Since the difference of both tube resulted 0.10857, while populating histogram for 10000 values we found that
## this is far too right in histogram.