rm(list=ls())
library(ggplot2)
library(dplyr)
library(readxl)
library(scales)
library(ggrepel)
library(gridExtra)

super_regions<- read_excel("G:/Projects/CEA vs. GBD/3. Analysis/2. Cleaned Datasets/Dataset 3. Regional and Disease Level Stratified Dataset_2020.xlsx", sheet="WHOSuperRegions")

df_wrap <- super_regions %>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 30))

###############################################################################################
#LATIN AMERICA AND THE CARIBBEAN
plot1 <- ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="LatinAmerica_Caribbean"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(super_regions, Region=="LatinAmerica_Caribbean"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 10.4782964231387, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 11, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Disease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("A") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = -.045, vjust = 0, size=25, face = "bold")) +
  geom_label(data=subset(df_wrap, Region=="LatinAmerica_Caribbean"), 
             aes(label = ifelse(Burden_millions<10 & TotalStudies==16, wrap_lbl,NA),
                 hjust=0, vjust=1), 
             size=3.25, fill = "white",alpha=.8, nudge_x = .1) +
  geom_label(data=subset(df_wrap, Region=="LatinAmerica_Caribbean"), 
             aes(label = ifelse(Burden_millions<10 & TotalStudies>16 & TotalStudies<25, wrap_lbl,NA),
                 hjust=0, vjust=0), 
             size=3.25, fill = "white",alpha=.8, nudge_x = .1) +
  geom_label(data=subset(df_wrap, Region=="LatinAmerica_Caribbean"), 
             aes(label = ifelse(Burden_millions<10 & TotalStudies==25, wrap_lbl,NA),
                 hjust=1, vjust=.5), 
             size=3.25, fill = "white",alpha=.8, nudge_x = -.1) +
  geom_label(data=subset(df_wrap, Region=="LatinAmerica_Caribbean"), 
             aes(label = ifelse(Burden_millions>10 & TotalStudies>21, wrap_lbl,NA),
                 hjust=1, vjust=0), 
             size=3.25, fill = "white",alpha=.8, nudge_x = -.1) +
  geom_label(data=subset(df_wrap, Region=="LatinAmerica_Caribbean"), 
             aes(label = ifelse(Burden_millions>10 & TotalStudies==21, wrap_lbl,NA),
                 hjust=1, vjust=.5), 
             size=3.25, fill = "white",alpha=.8, nudge_x = -.1) +
  geom_label(data=subset(df_wrap, Region=="LatinAmerica_Caribbean"), 
             aes(label = ifelse(TotalStudies==12, wrap_lbl,NA),
                 hjust=0, vjust=.25), 
             size=3.25, fill = "white",alpha=.8, nudge_x = .1) +
  geom_label(data=subset(df_wrap, Region=="LatinAmerica_Caribbean"), 
                   aes(label = ifelse(Burden_millions>10 & TotalStudies<10, wrap_lbl,NA),
                       hjust=0, vjust=1), 
                   size=3.75, fill = "white", color="firebrick", 
                   alpha=.8, nudge_x = .1, fontface="bold") +
  annotate("text", x=20, y=19, label="Trendline", size=3.25, color='steelblue4', fontface='bold') +
  theme(plot.margin=unit(c(.25,.15,1,.15),"cm"))

###############################################################################################
#NORTH AFRICA AND THE MIDDLE EAST
plot2 <- ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="NorthAfrica_MiddleEast"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(df_wrap, Region=="NorthAfrica_MiddleEast"),
             size=3, color="steelblue4") +
  geom_vline(xintercept = 13.7984461035846, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 8.25, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Disease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("B") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = -.045, vjust = 0, size=25, face = "bold")) +
  geom_label(data=subset(df_wrap, Region=="NorthAfrica_MiddleEast"), 
             aes(label = ifelse(Burden_millions<12&TotalStudies>7&TotalStudies<20,wrap_lbl,NA),
                 hjust=0, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .1) +
  geom_label(data=subset(df_wrap, Region=="NorthAfrica_MiddleEast"), 
             aes(label = ifelse(Burden_millions>10&TotalStudies>20,wrap_lbl,NA),
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.1) +
  geom_label(data=subset(df_wrap, Region=="NorthAfrica_MiddleEast"), 
             aes(label = ifelse(Burden_millions>13&TotalStudies>8&Burden_millions<20,wrap_lbl,NA),
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .1) +
  geom_label(data=subset(df_wrap, Region=="NorthAfrica_MiddleEast"), 
             aes(label = ifelse(Burden_millions>30,wrap_lbl,NA),
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .1) +
  geom_label(data=subset(df_wrap, Region=="NorthAfrica_MiddleEast"), 
             aes(label = ifelse(Burden_millions>12&TotalStudies==2,wrap_lbl,NA),
                 hjust=0, vjust=1), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .15, fontface="bold") +
  geom_label(data=subset(df_wrap, Region=="NorthAfrica_MiddleEast"), 
             aes(label = ifelse(Burden_millions>12&TotalStudies<8&TotalStudies>2,wrap_lbl,NA),
                 hjust=0, vjust=0), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .15, fontface="bold") +
  annotate("text", x=31, y=15, label="Trendline", size=3.25, color='steelblue4', fontface='bold')


grid.arrange(plot1, plot2, ncol=1)