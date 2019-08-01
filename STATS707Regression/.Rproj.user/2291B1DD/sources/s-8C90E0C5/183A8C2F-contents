isotopes <- read.csv("twoIsotopes.csv", header = TRUE)
mod <- lm (Secondary~Primary, data=isotopes)
summary(mod)

plot(Secondary~Primary, data=isotopes)

plot(Secondary~Primary, data=isotopes, subset=Primary< 10^8)
plot(mod)

modlog <- lm (log(Secondary)~log(Primary), data=isotopes)


plot(modlog)