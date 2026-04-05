library(ggplot2)
library(dplyr)

raw <- read.csv('fig2.csv',header=TRUE)
data <- tibble(raw)

fig2 <- ggplot(data,aes(x=x_cm/100,y=V,color=surface))+
     geom_abline(intercept=0,slope=9/0.05,color="gray70")+
     geom_hline(yintercept=0,color="gray70")+
     geom_point()+
     geom_line()+
     theme_bw(base_size=8)+
     xlab('distance, \\unit{\\meter}')+
     ylab('voltage, \\unit{\\volt}')+
     theme(
	legend.position='inside',
	legend.position.inside=c(0.2,0.8),
	legend.title=element_blank(),
	axis.title.y=element_text(margin=margin(t=0,r=8,b=0,l=0)))

ggsave('fig2.svg',plot=fig2,width=3.5,height=2,units="in")
