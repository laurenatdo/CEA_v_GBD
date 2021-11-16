rm(list=ls())
library(ggplot2)
library(dplyr)
library(readxl)
library(scales)
library(ggrepel)

super_regions<- read_excel("G:/Projects/CEA vs. GBD/3. Analysis/2. Cleaned Datasets/Dataset 3. Regional and Disease Level Stratified Dataset_2020.xlsx", sheet="WHOSuperRegions")

df_wrap <- super_regions %>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 30))

###############################################################################################
#sOUTHEAST ASIA, EAST ASIA, AND OCEANIA
ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="Southeast_Asia_East_Asia_Oceania"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(super_regions, Region=="Southeast_Asia_East_Asia_Oceania"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 66.9022608548, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 55, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("WHO Super Region: Southeast Asia, East Asia, and Oceania") +
  theme_bw() + theme(
      legend.position = "none",
      axis.text=element_text(size=12, color = "black"),
      axis.title=element_text(size=12, face="bold"),
      axis.line = element_line(colour = "black"),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
  geom_label(data=subset(df_wrap, Region=="Southeast_Asia_East_Asia_Oceania"), 
                   aes(label = ifelse((TotalStudies>51 & Burden_millions<60),wrap_lbl,NA), hjust=0, vjust=0), 
                   size=3.25, fill = "white", alpha=.8, nudge_x = .5) +
  geom_label(data=subset(df_wrap, Region=="Southeast_Asia_East_Asia_Oceania"), 
             aes(label = ifelse(Burden_millions>100|TotalStudies>150,wrap_lbl,NA), hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x =  -.5) +
  annotate("text", x=130, y=105, label="Trendline", size=3.25, color='steelblue4', fontface='bold')


###############################################################################################
#HIGH INCOME
ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="High_Income"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(super_regions, Region=="High_Income"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 28.876318862225, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 475, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("WHO Super Region: High-Income") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
  geom_label(data=subset(df_wrap, Region=="High_Income"), 
                   aes(label = ifelse(TotalStudies>450 & Burden_millions<20, wrap_lbl,NA),
                       hjust=0, vjust=1), 
                   size=3.25, fill = "white", 
             alpha=.8, nudge_x = .25) +
  geom_label(data=subset(df_wrap, Region=="High_Income"), 
                   aes(label = ifelse(TotalStudies>600,wrap_lbl,NA),
                       hjust=1, vjust=0), 
                   size=3.25, fill = "white", 
             alpha=.8, nudge_x = -.25) +
  geom_label(data=subset(df_wrap, Region=="High_Income"), 
                   aes(label = ifelse(TotalStudies<500 & Burden_millions>30 ,wrap_lbl,NA),  
                       hjust=0, vjust=1), 
                   size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .3, fontface="bold") +
  annotate("text", x=58, y=915, label="Trendline", size=3.5, color='steelblue4', fontface='bold')

###############################################################################################
#sUB-sAHARAN AFRICA
ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="SubSaharanAfrica"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(df_wrap, Region=="SubSaharanAfrica"),
             size=3, color="steelblue4") +
  geom_vline(xintercept = 59.2295456807834, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 32.5, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("WHO Super Region: Sub-Saharan Africa") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
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

###############################################################################################
#LATIN AMERICA AND THE CARIBBEAN
ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="LatinAmerica_Caribbean"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(super_regions, Region=="LatinAmerica_Caribbean"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 10.4782964231387, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 11, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("WHO Super Region: Latin America and the Caribbean") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
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
  annotate("text", x=20, y=19, label="Trendline", size=3.25, color='steelblue4', fontface='bold')

###############################################################################################
#EUROPE AND CENTRAL ASIA
ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="Europe_CentralAsia"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(df_wrap, Region=="Europe_CentralAsia"),
             size=3, color="steelblue4") +
  geom_vline(xintercept = 24.4042808127498, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 10.25, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("WHO Super Region: Europe and Central Asia") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
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

###############################################################################################
#SOUTH ASIA
df_wrap_southasia <- super_regions %>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 20))

ggplot(df_wrap_southasia, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="SouthAsia"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(df_wrap_southasia, Region=="SouthAsia"),
             size=3, color="steelblue4") +
  geom_vline(xintercept = 42.3296459302722, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 8, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("WHO Super Region: South Asia") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
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
  annotate("text", x=83, y=14.5, label="Trendline", size=3.25, color='steelblue4', fontface='bold')

###############################################################################################
#NORTH AFRICA AND THE MIDDLE EAST
ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="NorthAfrica_MiddleEast"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(df_wrap, Region=="NorthAfrica_MiddleEast"),
             size=3, color="steelblue4") +
  geom_vline(xintercept = 13.7984461035846, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 8.25, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("WHO Super Region: North Africa and the Middle East ") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
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


###############################################################################################
#GLOBAL
ggplot(df_wrap, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(super_regions, Region=="Global"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(df_wrap, Region=="Global"),
             size=3, color="steelblue4") +
  geom_vline(xintercept = 201.708735167386, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 525, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("WHO Super Region: Global ") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
  geom_label(data=subset(df_wrap, Region=="Global"), 
             aes(label = ifelse(Burden_millions<100&TotalStudies>500,wrap_lbl,NA),
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3) +
  geom_label(data=subset(df_wrap, Region=="Global"), 
             aes(label = ifelse(Burden_millions>100&TotalStudies>550&TotalStudies<900,wrap_lbl,NA),
                 hjust=1, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3) +
  geom_label(data=subset(df_wrap, Region=="Global"), 
             aes(label = ifelse(TotalStudies>1000,wrap_lbl,NA),
                 hjust=0, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .30) +
  geom_label(data=subset(df_wrap, Region=="Global"), 
             aes(label = ifelse(TotalStudies==971,wrap_lbl,NA),
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.30) +
  geom_label(data=subset(df_wrap, Region=="Global"), 
             aes(label = ifelse(TotalStudies>500&TotalStudies<525,wrap_lbl,NA),
                 hjust=1, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.30) +
  geom_label(data=subset(df_wrap, Region=="Global"), 
             aes(label = ifelse(TotalStudies<500&TotalStudies>400,wrap_lbl,NA),
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .30) +
  geom_label(data=subset(df_wrap, Region=="Global"), 
             aes(label = ifelse(Burden_millions>182&Burden_millions<200,wrap_lbl,NA),
                 hjust=0, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .30) +
  geom_label(data=subset(df_wrap, Region=="Global"), 
             aes(label = ifelse(Burden_millions>200&TotalStudies<500,wrap_lbl,NA),
                 hjust=0, vjust=0), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .30, fontface="bold") +
  annotate("text", x=395, y=1020, label="Trendline", size=3.25, color='steelblue4', fontface='bold')
