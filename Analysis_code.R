#load lavaan and semTools packages to perform confirmatory factor analysis and measure composite reliability
library(lavaan)    
library(semTools)

#load dplyr and psych packages to calculate corrected item-total correlated based on spearman's correlation matrix
library(dplyr)
library(psych)

#load the data file
RBS <- read.csv("dataset.csv")

#Confirmatory factor analyses:

#Model 1:
mod1 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8 +
               cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8 +
               rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11 +
               rb1 + rb2 + rb3 + rb4'
mod1_fit <- cfa(mod1, data=RBS, estimator = "WLSMV", ordered = c("sb1", "sb2", "sb3", "sb4", "sb5", "sb6", 
                                                                  "sib1", "sib2", "sib3", "sib4", "sib5", "sib6", "sib7", "sib8", 
                                                                  "cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", 
                                                                  "rit1", "rit2", "rit3", "rit4", "rit5", "rit6",
                                                                  "same1", "same2", "same3", "same4", "same5", "same6", "same7",
                                                                  "same8", "same9", "same10", "same11", "rb1", "rb2", "rb3", "rb4"))
summary(mod1_fit, standardized = TRUE, fit.measures = TRUE)

#Model 2:
mod2 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f2 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8 +
               rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11 +
               rb1 + rb2 + rb3 + rb4'
mod2_fit <- cfa(mod2, data=RBS, estimator = "WLSMV", ordered = c("sb1", "sb2", "sb3", "sb4", "sb5", "sb6", 
                                                                 "sib1", "sib2", "sib3", "sib4", "sib5", "sib6", "sib7", "sib8", 
                                                                 "cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", 
                                                                 "rit1", "rit2", "rit3", "rit4", "rit5", "rit6",
                                                                 "same1", "same2", "same3", "same4", "same5", "same6", "same7",
                                                                 "same8", "same9", "same10", "same11", "rb1", "rb2", "rb3", "rb4"))
summary(mod2_fit, standardized = TRUE, fit.measures = TRUE)

#Model 3:
mod3 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f2 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8
         f3 =~ rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11 +
               rb1 + rb2 + rb3 + rb4'
mod3_fit <- cfa(mod3, data=RBS, estimator = "WLSMV", ordered = c("sb1", "sb2", "sb3", "sb4", "sb5", "sb6", 
                                                                  "sib1", "sib2", "sib3", "sib4", "sib5", "sib6", "sib7", "sib8", 
                                                                  "cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", 
                                                                  "rit1", "rit2", "rit3", "rit4", "rit5", "rit6",
                                                                  "same1", "same2", "same3", "same4", "same5", "same6", "same7",
                                                                  "same8", "same9", "same10", "same11", "rb1", "rb2", "rb3", "rb4"))
summary(mod3_fit, standardized = TRUE, fit.measures = TRUE)

#Model 4:
mod4 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               rb1 + rb2 + rb3 + rb4
         f2 =~ sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f3 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8 +
               rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11'
mod4_fit <- cfa(mod4, data=RBS, estimator = "WLSMV", ordered = c("sb1", "sb2", "sb3", "sb4", "sb5", "sb6", 
                                                                 "sib1", "sib2", "sib3", "sib4", "sib5", "sib6", "sib7", "sib8", 
                                                                 "cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", 
                                                                 "rit1", "rit2", "rit3", "rit4", "rit5", "rit6",
                                                                 "same1", "same2", "same3", "same4", "same5", "same6", "same7",
                                                                 "same8", "same9", "same10", "same11", "rb1", "rb2", "rb3", "rb4"))
summary(mod4_fit, standardized = TRUE, fit.measures = TRUE)

#Model 5:
mod5 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               rb1 + rb2 + rb3 + rb4
         f2 =~ sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f3 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8
         f4 =~ rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11'
mod5_fit <- cfa(mod5, data=RBS, estimator = "WLSMV", ordered = c("sb1", "sb2", "sb3", "sb4", "sb5", "sb6", 
                                                                 "sib1", "sib2", "sib3", "sib4", "sib5", "sib6", "sib7", "sib8", 
                                                                 "cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", 
                                                                 "rit1", "rit2", "rit3", "rit4", "rit5", "rit6",
                                                                 "same1", "same2", "same3", "same4", "same5", "same6", "same7",
                                                                 "same8", "same9", "same10", "same11", "rb1", "rb2", "rb3", "rb4"))
summary(mod5_fit, standardized = TRUE, fit.measures = TRUE)

#Model 6:
mod6 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6
         f2 =~ sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f3 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8
         f4 =~ rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11
         f5 =~ rb1 + rb2 + rb3 + rb4'
mod6_fit <- cfa(mod6, data=RBS, estimator = "WLSMV", ordered = c("sb1", "sb2", "sb3", "sb4", "sb5", "sb6", 
                                                                 "sib1", "sib2", "sib3", "sib4", "sib5", "sib6", "sib7", "sib8", 
                                                                 "cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", 
                                                                 "rit1", "rit2", "rit3", "rit4", "rit5", "rit6",
                                                                 "same1", "same2", "same3", "same4", "same5", "same6", "same7",
                                                                 "same8", "same9", "same10", "same11", "rb1", "rb2", "rb3", "rb4"))
summary(mod6_fit, standardized = TRUE, fit.measures = TRUE)

#Model 7:
mod7 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6
         f2 =~ sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f3 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8
         f4 =~ rit1 + rit2 + rit3 + rit4 + rit5 + rit6
         f5 =~ same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11
         f6 =~ rb1 + rb2 + rb3 + rb4'
mod7_fit <- cfa(mod7, data=RBS, estimator = "WLSMV", ordered = c("sb1", "sb2", "sb3", "sb4", "sb5", "sb6", 
                                                                 "sib1", "sib2", "sib3", "sib4", "sib5", "sib6", "sib7", "sib8", 
                                                                 "cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", 
                                                                 "rit1", "rit2", "rit3", "rit4", "rit5", "rit6",
                                                                 "same1", "same2", "same3", "same4", "same5", "same6", "same7",
                                                                 "same8", "same9", "same10", "same11", "rb1", "rb2", "rb3", "rb4"))
summary(mod7_fit, standardized = TRUE, fit.measures = TRUE)

#Perform the chi-square DiffTest to assess the relative fitness against model 1:
anova(mod1_fit, mod2_fit)
anova(mod1_fit, mod3_fit)
anova(mod1_fit, mod4_fit)
anova(mod1_fit, mod5_fit)
anova(mod1_fit, mod6_fit)
anova(mod1_fit, mod7_fit)

# Calculate the composite reliabilities:

#Model 2:
rel_mod2 <- compRelSEM(mod2_fit)
print(rel_mod2, digits = 3)

#Model 7:
rel_mod7 <- compRelSEM(mod7_fit)
print(rel_mod7, digits = 3)

#Storing items for each factor:

#Model 2:
RSMB <- select(RBS, 1,2,3,4,5,6,7,8,9,10,11,12,13,14)
IS <- select(RBS, 15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43)

#Model 7:
SB <- select(RBS, 1,2,3,4,5,6)
SIB <- select(RBS, 7,8,9,10,11,12,13,14)
CB <- select(RBS, 15,16,17,18,19,20,21,22)
Rit <- select(RBS, 23,24,25,26,27,28)
Same <- select(RBS, 29,30,31,32,33,34,35,36,37,38,39)
RB <- select(RBS, 40,41,42,43)

#Conducting reliability analysis for each factor and printing item statistics including the corrected-item total correlation

#Model 2:
RSMB_rel <- alpha(cor(RSMB, method = "spearman"))
RSMB_rel$item.stats
IS_rel <- alpha(cor(IS, method = "spearman"))
IS_rel$item.stats

#Model 7:
SB_rel <- alpha(cor(SB, method = "spearman"))
SB_rel$item.stats
SIB_rel <- alpha(cor(SIB, method = "spearman"))
SIB_rel$item.stats
CB_rel <- alpha(cor(CB, method = "spearman"))
CB_rel$item.stats
Rit_rel <- alpha(cor(Rit, method = "spearman"))
Rit_rel$item.stats
Same_rel <- alpha(cor(Same, method = "spearman"))
Same_rel$item.stats
RB_rel <- alpha(cor(RB, method = "spearman"))
RB_rel$item.stats
