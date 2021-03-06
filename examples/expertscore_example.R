# load the hypothetical predicted continuous probability surface
data(myprobsurface)

# load three hypothetical expert maps
data(myexpert1)
data(myexpert2)
data(myexpert3)

# load the hypothetical occurrences
data(myoccurrences)

# load study area -- we suggest a union of convex hull of occurrences and all competing expert maps
# highly distant and suspicious occurrences can be discarded before making a convex hull
data(mystudyarea)

# plot the data
image(myprobsurface, zlim=c(0,1),col=rev(terrain.colors(100)),xaxt="n",yaxt="n",bty="n",xlab=" ",ylab=" ")
points(myoccurrences, pch=21, col="purple", cex=1)
plot(myexpert1, add=TRUE, border="orange", lwd=2)
plot(myexpert2, add=TRUE, border="red", lwd=2)
plot(myexpert3, add=TRUE, border="cyan", lwd=2)
plot(mystudyarea, add=TRUE, border='blue', lwd=1)

# compute expert score of the three hypothetical expert maps
expertscore(expertmap = myexpert1, probsurface = myprobsurface, studyarea = mystudyarea)
expertscore(expertmap = myexpert2, probsurface = myprobsurface, studyarea = mystudyarea)
expertscore(expertmap = myexpert3, probsurface = myprobsurface, studyarea = mystudyarea)
