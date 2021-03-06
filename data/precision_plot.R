# load('~/Documents/LCN2014_CoxRogers/data/lcn_precision_matrices_for_plot.RDAT')
# library(gplots)
# install.packages('ggplot2')
# library(ggplot2)
# X11()

# setEPS()
postscript('~/Documents/LCN2014_CoxRogers/figures/precision_plot.eps',width=5,height=8)
layout(matrix(1:3,nrow=3))
par(mar=c(4,4,1,1))
x <- barplot2(allUnits[1:2,],beside=T,ylim=c(0,1),axes=F,ylab='',names.arg=rep(NA,6),col=c('white','grey'))
axis(1,at=c(1,9),lwd=1,line=0.5,labels=NA)
axis(1,at=c(10,12),lwd=1,line=0.5,labels=NA)
axis(1,at=c(13,18),lwd=1,line=0.5,labels=NA)
mtext(c('Low','Med','High'),at=c(2,5,8),side=1,line=.75,cex=0.9)
mtext(c('Local','Disp'),at=c(14,17),side=1,line=.75,cex=0.9)
mtext(c('Ridge','LASSO','SOS LASSO'),at=c(5,11,15.5),side=1,line=2.25,cex=1.1)
mtext('All Units',side=2,line=2,cex=1.1)
axis(2,at=c(0,0.5,1),cex.axis=1.25)
legend('topright',c('Precision','Hit Rate'),fill=c('white','grey'),cex=1.5,bty="n")

barplot2(InputUnits[1:2,],beside=T,ylim=c(0,1),axes=F,ylab='',names.arg=rep(NA,6),col=c('white','grey'))
axis(1,at=c(1,9),lwd=1,line=0.5,labels=NA)
axis(1,at=c(10,12),lwd=1,line=0.5,labels=NA)
axis(1,at=c(13,18),lwd=1,line=0.5,labels=NA)
mtext(c('Low','Med','High'),at=c(2,5,8),side=1,line=.75,cex=0.9)
mtext(c('Local','Disp'),at=c(14,17),side=1,line=.75,cex=0.9)
mtext(c('Ridge','LASSO','SOS LASSO'),at=c(5,11,15.5),side=1,line=2.25,cex=1.1)
mtext('Input Units',side=2,line=2,cex=1.1)
axis(2,at=c(0,0.5,1),cex.axis=1.25)

barplot2(HiddenUnits[1:2,],beside=T,ylim=c(0,1),axes=F,ylab='',names.arg=rep(NA,6),col=c('white','grey'))
axis(1,at=c(1,9),lwd=1,line=0.5,labels=NA)
axis(1,at=c(10,12),lwd=1,line=0.5,labels=NA)
axis(1,at=c(13,18),lwd=1,line=0.5,labels=NA)
mtext(c('Low','Med','High'),at=c(2,5,8),side=1,line=.75,cex=0.9)
mtext(c('Local','Disp'),at=c(14,17),side=1,line=.75,cex=0.9)
mtext(c('Ridge','LASSO','SOS LASSO'),at=c(5,11,15.5),side=1,line=2.25,cex=1.1)
mtext('Hidden Units',side=2,line=2,cex=1.1)
axis(2,at=c(0,0.5,1),cex.axis=1.25)
dev.off()