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
#sOUTHEAST ASIA, EAST ASIA, AND OCEANIA
plot1 <- ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="Southeast_Asia_East_Asia_Oceania"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(super_regions, Region=="Southeast_Asia_East_Asia_Oceania"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 66.9022608548, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 55, linetype="dashed", color="firebrick") +
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
  geom_label(data=subset(df_wrap, Region=="Southeast_Asia_East_Asia_Oceania"), 
                   aes(label = ifelse((TotalStudies>51 & Burden_millions<60),wrap_lbl,NA), hjust=0, vjust=0), 
                   size=3.25, fill = "white", alpha=.8, nudge_x = .5) +
  geom_label(data=subset(df_wrap, Region=="Southeast_Asia_East_Asia_Oceania"), 
             aes(label = ifelse(Burden_millions>100|TotalStudies>150,wrap_lbl,NA), hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x =  -.5) +
  annotate("text", x=130, y=105, label="Trendline", size=3.25, color='steelblue4', fontface='bold') +
  theme(plot.margin=unit(c(.25,.15,1,.15),"cm"))


###############################################################################################
#EUROPE AND CENTRAL ASIA
plot2 <- ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="Europe_CentralAsia"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(df_wrap, Region=="Europe_CentralAsia"),
             size=3, color="steelblue4") +
  geom_vline(xintercept = 24.4042808127498, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 10.25, linetype="dashed", color="firebrick") +
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
  geom_label(data=subset(df_wrap, Region=="Europe_CentralAsia"), 
             aes(label = ifelse(Burden_millions<20&Burden_millions>1&TotalStudies<11,wrap_lbl,NA),
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .25) +
  geom_label(data=subset(df_wrap, Region=="Europe_CentralAsia"), 
             aes(label = ifelse(Burden_millions<1&TotalStudies>8,wrap_lbl,NA),
                 hjust=0, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_y = -.25) +
  geom_label(data=subset(df_wrap, Region=="Europe_CentralAsia"), 
             aes(label = ifelse(TotalStudies>15&TotalStudies<22,wrap_lbl,NA),
                 hjust=1, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.25) +
  geom_label(data=subset(df_wrap, Region=="Europe_CentralAsia"), 
             aes(label = ifelse(TotalStudies>22,wrap_lbl,NA),
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .25) +
  geom_label(data=subset(df_wrap, Region=="Europe_CentralAsia"), 
             aes(label = ifelse(Burden_millions>22,wrap_lbl,NA),
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.25) +
  annotate("text", x=49, y=17, label="Trendline", size=3.25, color='steelblue4', fontface='bold')


grid.arrange(plot1, plot2, ncol=1)