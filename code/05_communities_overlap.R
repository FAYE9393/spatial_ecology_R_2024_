# 

# install.packages("overlap")

library(overlap)

data(kerinci)

# exercise: show the first 6 row of kerinci
head(kerinci)

kerinci

summary(kerinci)

kerinci$Timecirc <- kerinci$Time * 2 * pi

# tiger data
tiger <- kerinci[kerinci$Sps=="tiger",]
tigertime <- tiger$Timecirc

densityPlot(tigertime)

# macaque
# Exercise: select the data for the macaque and assign them to a new object
macaque <- kerinci[kerinci$Sps=="macaque",]

# exercise: select the time for the macaque data and make a density plot
macaque <- macaque$Timecirc

densituPlot(macaquetime)

overlapPlot(tigertime,macaquetime)


#----- SQL
macaque <- kerinci[kerinci$Sps=="macaque",]
summary(macaque)

nomacaque <- kerinci[kerinci$Sps !="macaque",]
summary(nomacaque)
