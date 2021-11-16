rm(list=ls())
library(ggplot2)
library(dplyr)
library(readxl)
library(scales)
library(ggrepel)
library(gridExtra)

income_level<- read_excel("G:/Projects/CEA vs. GBD/3. Analysis/2. Cleaned Datasets/Dataset 3. Regional and Disease LEvel Stratified Dataset_2020.xlsx", sheet="WBIncome")

df_wrap_income<- income_level%>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 30))


###############################################################################################
#HIGH AND UPPER-MIDDLE INCOME
ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_High_Upper_Middle_Income"),
              color='navyblue', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_High_Upper_Middle_Income"), 
             size=3, color='navyblue') +
  geom_vline(xintercept = 86.612533953089, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 449, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("High- and Upper-Middle-Income Countries") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=13, color = "navyblue"),
    axis.title=element_text(size=15, color="navyblue", face="bold"),
    axis.line = element_line(colour = "navyblue"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=20, color="navyblue", face = "bold")) +
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Upper_Middle_Income"), 
             aes(label = ifelse(TotalStudies>360&Burden_millions<200,wrap_lbl,NA), 
                 hjust=0, vjust=0), 
             size=3.7, color="navyblue", fill = "white", alpha=.8, nudge_x = .3, nudge_y = .5) +
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Upper_Middle_Income"), 
             aes(label = ifelse(Burden_millions>200,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.7, color="navyblue", fill = "white", alpha=.8, nudge_x = -.3, nudge_y = -.5) + 
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Upper_Middle_Income"), 
             aes(label = ifelse(Burden_millions>80&TotalStudies<400,wrap_lbl,NA),  
                 hjust=0, vjust=1), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .4, nudge_y = -.6, fontface="bold") +

  annotate("text", x=215, y=1125, label="Trendline", size=3.7, color="navyblue", fontface='bold')

###############################################################################################
#LOW AND LOWER-MIDDLE INCOME
df_wrap_income_short<- income_level%>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 25))

ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_Low_Lower_Middle_Income"),
              color='navyblue', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_Low_Lower_Middle_Income"), 
             size=3, color='navyblue') +
  geom_vline(xintercept = 110.160559088023, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 23.5, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("Low- and Lower-Middle-Income Countries") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=13, color = "navyblue"),
    axis.title=element_text(size=15, color="navyblue", face="bold"),
    axis.line = element_line(colour = "navyblue"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=20, color="navyblue", face = "bold")) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==35|(TotalStudies==15&Burden_millions>104&Burden_millions<105),wrap_lbl,NA), 
                 hjust=0, vjust=0), 
             size=3.7, color="navyblue", fill = "white", alpha=.8, nudge_x = .3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==23|TotalStudies==34,wrap_lbl,NA), 
                 hjust=0, vjust=1), 
             size=3.7, color="navyblue", fill = "white", alpha=.8, nudge_x = .3) + 
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==69|TotalStudies==84,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.7, color="navyblue", fill = "white", alpha=.8, nudge_x = - .3) +
  geom_label(data=subset(df_wrap_income_short, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(Burden_millions>150&TotalStudies<20,wrap_lbl,NA),  
                 hjust=0, vjust=.5), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .5, fontface="bold") +
  annotate("text", x=213, y=42, label="Trendline", size=3.7, color="navyblue", fontface='bold')

