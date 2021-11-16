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
#HIGH INCOME
ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_High_Income"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_High_Income"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 31.5577910942272, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 450, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("World Bank Income Level: High-Income Countries") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Income"), 
             aes(label = ifelse((TotalStudies==452|TotalStudies==478),wrap_lbl,NA), 
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Income"), 
             aes(label = ifelse((TotalStudies==857|TotalStudies==667),wrap_lbl,NA), 
                 hjust=1, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Income"), 
             aes(label = ifelse(TotalStudies==1090,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Income"), 
             aes(label = ifelse(TotalStudies==347,wrap_lbl,NA),  
                 hjust=0, vjust=1), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .3, fontface="bold") +
  annotate("text", x=63, y=925, label="Trendline", size=3.25, color='steelblue4', fontface='bold')

###############################################################################################
#LOW INCOME
ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_Low_Income"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_Low_Income"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 35.8149268349718, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 14.75, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("World Bank Income Level: Low-Income Countries") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Income"), 
             aes(label = ifelse(TotalStudies==14|TotalStudies==31,wrap_lbl,NA), 
                 hjust=1, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Income"), 
             aes(label = ifelse(TotalStudies>40,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Income"), 
             aes(label = ifelse(TotalStudies<10&Burden_millions>40,wrap_lbl,NA),  
                 hjust=0, vjust=0), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .3, fontface="bold") +
  annotate("text", x=68, y=29.50, label="Trendline", size=3.25, color='steelblue4', fontface='bold')

###############################################################################################
#LOWER-MIDDLE INCOME
df_wrap_income_short<- income_level%>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 25))

ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_Lower_Middle_Income"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_Lower_Middle_Income"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 79.7551903102277, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 14.5, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("World Bank Income Level: Lower-Middle-Income Countries") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies>13&TotalStudies<29,wrap_lbl,NA), 
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==13|TotalStudies>44,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==13|TotalStudies>44,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==6|TotalStudies==12,wrap_lbl,NA),  
                 hjust=0, vjust=1), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .3, fontface="bold") +
  geom_label(data=subset(df_wrap_income_short, Region=="WB_Lower_Middle_Income"), 
             aes(label = ifelse(Burden_millions>150,wrap_lbl,NA),  
                 hjust=1, vjust=0), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = -.3, fontface="bold") +
  annotate("text", x=156, y=24, label="Trendline", size=3.25, color='steelblue4', fontface='bold')

###############################################################################################
#UPPER-MIDDLE INCOME
df_wrap_income_short<- income_level%>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 25))

ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_Upper_Middle_Income"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_Upper_Middle_Income"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 80.0346853310188, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 61.5, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("World Bank Income Level: Upper-Middle-Income Countries") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Upper_Middle_Income"), 
             aes(label = ifelse((TotalStudies>50&Burden_millions<100)|TotalStudies==17,wrap_lbl,NA), 
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3, nudge_y = .5) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Upper_Middle_Income"), 
             aes(label = ifelse(Burden_millions>100,wrap_lbl,NA), 
                 hjust=1, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3, nudge_y = -.5) +
  annotate("text", x=158, y=120, label="Trendline", size=3.25, color='steelblue4', fontface='bold')

###############################################################################################
#HIGH AND UPPER-MIDDLE INCOME
ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_High_Upper_Middle_Income"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_High_Upper_Middle_Income"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 86.612533953089, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 449, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("World Bank Income Level: High- and Upper-Middle-Income Countries") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Upper_Middle_Income"), 
             aes(label = ifelse(TotalStudies>360&Burden_millions<200,wrap_lbl,NA), 
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3, nudge_y = .5) +
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Upper_Middle_Income"), 
             aes(label = ifelse(Burden_millions>200,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3, nudge_y = -.5) + 
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Upper_Middle_Income"), 
             aes(label = ifelse(Burden_millions>80&TotalStudies<400,wrap_lbl,NA),  
                 hjust=0, vjust=1), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .4, nudge_y = -.6, fontface="bold") +

  annotate("text", x=215, y=1125, label="Trendline", size=3.25, color='steelblue4', fontface='bold')

###############################################################################################
#LOW AND LOWER-MIDDLE INCOME
df_wrap_income_short<- income_level%>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 25))

ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_Low_Lower_Middle_Income"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_Low_Lower_Middle_Income"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 110.160559088023, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 23.5, linetype="dashed", color="firebrick") +
  scale_x_continuous(name = "Diease Burden in Millions of DALYs") + 
  scale_y_continuous(name = "Number of Cost-Effectiveness Analysis Studies") + 
  ggtitle("World Bank Income Level: Low- and Lower-Middle-Income Countries") +
  theme_bw() + theme(
    legend.position = "none",
    axis.text=element_text(size=12, color = "black"),
    axis.title=element_text(size=12, face="bold"),
    axis.line = element_line(colour = "black"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    plot.title = element_text(hjust = 0.5, size=15, face = "bold")) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==35|(TotalStudies==15&Burden_millions>104&Burden_millions<105),wrap_lbl,NA), 
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==23|TotalStudies==34,wrap_lbl,NA), 
                 hjust=0, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3) + 
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==69|TotalStudies==84,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = - .3) +
  geom_label(data=subset(df_wrap_income_short, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(Burden_millions>150&TotalStudies<20,wrap_lbl,NA),  
                 hjust=0, vjust=.5), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .5, fontface="bold") +
  annotate("text", x=213, y=42, label="Trendline", size=3.25, color='steelblue4', fontface='bold')

################################################################################################
##########################################SIDE-BY-SIDE##########################################
################################################################################################
require(gridExtra)

#HIGH AND UPPER-MIDDLE INCOME
plot1 <- ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_High_Upper_Middle_Income"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_High_Upper_Middle_Income"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 86.612533953089, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 449, linetype="dashed", color="firebrick") +
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
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Upper_Middle_Income"), 
             aes(label = ifelse(TotalStudies>360&Burden_millions<200,wrap_lbl,NA), 
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3, nudge_y = .5) +
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Upper_Middle_Income"), 
             aes(label = ifelse(Burden_millions>200,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = -.3, nudge_y = -.5) + 
  geom_label(data=subset(df_wrap_income, Region=="WB_High_Upper_Middle_Income"), 
             aes(label = ifelse(Burden_millions>80&TotalStudies<400,wrap_lbl,NA),  
                 hjust=0, vjust=1), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .4, nudge_y = -.6, fontface="bold") +
  annotate("text", x=215, y=1125, label="Trendline", size=3.25, color='steelblue4', fontface='bold') +
  theme(plot.margin=unit(c(.25,.15,1,.15),"cm"))


#LOW AND LOWER-MIDDLE INCOME
df_wrap_income_short<- income_level%>%  
  mutate(wrap_lbl = stringr::str_wrap(Disease2, width = 25))

plot2 <- ggplot(df_wrap_income, aes(x=Burden_millions, y=TotalStudies, Region)) +
  geom_smooth(method='lm',
              data=subset(income_level, Region=="WB_Low_Lower_Middle_Income"),
              color='steelblue4', fill='gray82') + 
  geom_point(data=subset(income_level, Region=="WB_Low_Lower_Middle_Income"), 
             size=3, color='steelblue4') +
  geom_vline(xintercept = 110.160559088023, linetype="dashed", color="firebrick") + 
  geom_hline(yintercept = 23.5, linetype="dashed", color="firebrick") +
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
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==35|(TotalStudies==15&Burden_millions>104&Burden_millions<105),wrap_lbl,NA), 
                 hjust=0, vjust=0), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3) +
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==23|TotalStudies==34,wrap_lbl,NA), 
                 hjust=0, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = .3) + 
  geom_label(data=subset(df_wrap_income, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(TotalStudies==69|TotalStudies==84,wrap_lbl,NA), 
                 hjust=1, vjust=1), 
             size=3.25, fill = "white", alpha=.8, nudge_x = - .3) +
  geom_label(data=subset(df_wrap_income_short, Region=="WB_Low_Lower_Middle_Income"), 
             aes(label = ifelse(Burden_millions>150&TotalStudies<20,wrap_lbl,NA),  
                 hjust=0, vjust=.5), 
             size=3.75, fill = "white", color="firebrick", 
             alpha=.8, nudge_x = .5, fontface="bold") +
  annotate("text", x=213, y=42, label="Trendline", size=3.25, color='steelblue4', fontface='bold')


grid.arrange(plot1, plot2, ncol=1)