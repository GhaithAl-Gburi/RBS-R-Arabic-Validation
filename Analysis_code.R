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

#Calculate Spearman's correlation between factors:

#Model 2:
mod2_corr <- cor(RBS[,57:58], method = "spearman")
print(mod2_corr)

#Model 7:
mod7_corr <- cor(RBS[,59:64], method = "spearman")
print(mod7_corr)

#Assessing the corrected item-total correlation based on spearman's rank correlation:

#Model 2:
RSMB <- RBS %>% select(14:27)
IS <- RBS %>% select(28:56)
RSMB_rel <- alpha(cor(RSMB, method = "spearman"))
RSMB_rel$item.stats
IS_rel <- alpha(cor(IS, method = "spearman"))
IS_rel$item.stats

#Model 7:
SB <- RBS %>% select(14:19)
SIB <- RBS %>% select(20:27)
CB <- RBS %>% select(28:35)
Rit <- RBS %>% select(36:41)
Same <- RBS %>% select(42:52)
RB <- RBS %>% select(53:56)
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

#Calculate the composite reliabilities:

#Model 2:
rel_mod2 <- compRelSEM(mod2_fit)
print(rel_mod2, digits = 3)

#Model 7:
rel_mod7 <- compRelSEM(mod7_fit)
print(rel_mod7, digits = 3)

#Conduct psychometric analyses for a modification of model 2:

#Confirmatory factor analysis:
mod2m <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + cb8 +
                sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
          f2 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 +
               rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11 +
               rb1 + rb2 + rb3 + rb4'
mod2m_fit <- cfa(mod2m, data=RBS, estimator = "WLSMV", ordered = c("sb1", "sb2", "sb3", "sb4", "sb5", "sb6", 
                                                                 "sib1", "sib2", "sib3", "sib4", "sib5", "sib6", "sib7", "sib8", 
                                                                 "cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8", 
                                                                 "rit1", "rit2", "rit3", "rit4", "rit5", "rit6",
                                                                 "same1", "same2", "same3", "same4", "same5", "same6", "same7",
                                                                 "same8", "same9", "same10", "same11", "rb1", "rb2", "rb3", "rb4"))
summary(mod2m_fit, standardized = TRUE, fit.measures = TRUE)
anova(mod1_fit, mod2m_fit)

#Spearman's correlation between factors:
mod2m_corr <- cor(RBS[,65:66], method = "spearman")
print(mod2m_corr)

#Corrected item-total correlation:
RSMBm <- RBS %>% select(14:27, 35)
ISm <- RBS %>% select(28:34,36:56)
RSMBm_rel <- alpha(cor(RSMBm, method = "spearman"))
RSMBm_rel$item.stats

#Composite reliability:
rel_mod2m <- compRelSEM(mod2m_fit)
print(rel_mod2m, digits = 3)
