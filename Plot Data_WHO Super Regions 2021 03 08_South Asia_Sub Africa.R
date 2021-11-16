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
#SOUTH ASIA
df_wrap_southasia <- super_regions %>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 20))

plot1 <- ggplot(df_wrap_southasia, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="SouthAsia"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(df_wrap_southasia, Region=="SouthAsia"),
             size=3, color="steelblue4") +
  geom_vline(xintercept = 42.3296459302722, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 8, linetype="dashed", color="firebrick") +
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
  geom_label(data=subset(df_wrap_southasia, Region=="SouthAsia"), 
             aes(label = ifelse(Burden_millions<20&TotalStudies>9,wrap_lbl,NA),
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .25) +
  geom_label(data=subset(df_wrap_southasia, Region=="SouthAsia"), 
             aes(label = ifelse(Burden_millions<40&Burden_millions>20&TotalStudies>9,wrap_lbl,NA),
                 hjust=0, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .25) +
  geom_label(data=subset(df_wrap_southasia, Region=="SouthAsia"), 
             aes(label = ifelse(Burden_millions>44&TotalStudies>8,wrap_lbl,NA),
                 hjust=0, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .25) +
  geom_label(data=subset(df_wrap_southasia, Region=="SouthAsia"), 
             aes(label = ifelse(Burden_millions<44&Burden_millions>40&TotalStudies>8,wrap_lbl,NA),
                 hjust=1, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.25) +
  geom_label(data=subset(df_wrap_southasia, Region=="SouthAsia"), 
             aes(label = ifelse(Burden_millions>60 & TotalStudies<9, wrap_lbl,NA),
                 hjust=1, vjust=1), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .1, fontface="bold") +
  annotate("text", x=83, y=14.5, label="Trendline", size=3.25, color='steelblue4', fontface='bold')  +
  theme(plot.margin=unit(c(.25,.15,1,.15),"cm"))


###############################################################################################
#sUB-sAHARAN AFRICA
plot2 <- ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="SubSaharanAfrica"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(df_wrap, Region=="SubSaharanAfrica"),
             size=3, color="steelblue4") +
  geom_vline(xintercept = 59.2295456807834, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 32.5, linetype="dashed", color="firebrick") +
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
  geom_label(data=subset(df_wrap, Region=="SubSaharanAfrica"), 
             aes(label = ifelse(Burden_millions<60&TotalStudies>35,wrap_lbl,NA),
                 hjust=1, vjust=0), 
             size=3.25, fill = "white", 
             alpha=.8, nudge_x = -.25) +
  geom_label(data=subset(df_wrap, Region=="SubSaharanAfrica"), 
             aes(label = ifelse(Burden_millions>90,wrap_lbl,NA),
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", 
             alpha=.8, nudge_x = -.25) +
  geom_label(data=subset(df_wrap, Region=="SubSaharanAfrica"), 
             aes(label = ifelse(Burden_millions>60 & TotalStudies<35, wrap_lbl,NA),
                 hjust=0, vjust=0), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .3, fontface="bold") +
  annotate("text", x=115, y=65, label="Trendline", size=3.25, color='steelblue4', fontface='bold')


grid.arrange(plot1, plot2, ncol=1)