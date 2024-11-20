# code for remote sensing data and handling and analysis

# install.package ("devtools")
# install_github("ducciricchini/imageRy")

library(terra)
library(imageRy)

# listing data inside imageRy
im.list()

# sentinel-2 line bands
# https://gisgeography.com/sentinel-2-bands-combinations/

# importing the data
b2 <- im.import("sentinel.dolomites.b2.tif")

cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(b2,col=cl)

# Exercise: impory b3 and plot it with the previous palette
b3 <- im.import("sentinel.dolomites.b3.tif")
plot(b3,col=cl)

# import the red band from Sentinel-2 (band 4)
b4 <- im.import("sentinel.dolomites.b4.tif") 
plot(b4, col=cl)

# import the NIR band from Sentinel-2 (band 8)
b8 <- im.import("sentinel.dolomites.b8.tif") 
plot(b8, col=cl)

# multiframe
par(mfrow=c(2,2))
plot(b2, col=cl)
plot(b3, col=cl)
plot(b4, col=cl)
plot(b8, col=cl)

# stack
stacksent <- c(b2, b3, b4, b8)
dev.off() # it closes devices
plot(stacksent, col=cl)

plot(stacksent[[4]], col=cl)

# Exercise: plot in a multiframe the bands with different color ramps
par(mfrow=c(2,2))

# plotting blue band (b2)
clb <- colorRampPalette(c("dark blue", "blue", "light blue")) (100)
plot(b2, col=clb)

#plotting green band (b3)
clg <- colorRampPalette(c("dark green", "green", "light green")) (100)
plot(b3, col=clg)

# plotting red band (b4)
clr <- colorRampPalette(c("dark red", "red", "pink")) (100)
plot(b4, col=clr)

# plotting red band (b8)
cln <- colorRampPalette(c("brown", "orange", "yellow")) (100)
plot(b8, col=cln)

# RGB plotting
dev.off()
im.plotRGB(sentstack,r=3,g=2,b=1) # natural color image
