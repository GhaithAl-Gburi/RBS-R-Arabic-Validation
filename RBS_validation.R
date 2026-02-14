# Settings

## Clear working environment

# Clear Environment
rm(list=ls())

## Required package

packages <- c("lavaan","semTools","dplyr","psych")

for (package in packages) {
  
  if (!requireNamespace(package, quietly = TRUE))
    install.packages(package)
  
  suppressPackageStartupMessages(library(package, character.only = TRUE))
  
}

## Import and inspect data attributes

# Load the data file
RBS <- read.csv("RBS_data.csv")

attributes(RBS)[names(attributes(RBS)) != "row.names"]

# Confirmatory factor analysis

# Store item names
sb_items <- c("sb1", "sb2", "sb3", "sb4", "sb5", "sb6")
sib_items <- c("sib1", "sib2", "sib3", "sib4", "sib5", "sib6", "sib7", "sib8")
cb_items <- c("cb1", "cb2", "cb3", "cb4", "cb5", "cb6", "cb7", "cb8")
rit_items <- c("rit1", "rit2", "rit3", "rit4", "rit5", "rit6")
same_items <- c("same1", "same2", "same3", "same4", "same5", "same6", 
                "same7", "same8", "same9", "same10", "same11")
rb_items <- c("rb1", "rb2", "rb3", "rb4")

RSMB_items<- c(sb_items, sib_items)
IS_items <- c(cb_items, rit_items, same_items, rb_items)
RBS_items <- c(sb_items, sib_items, cb_items, rit_items, same_items, rb_items)

# Store factor names
mod2_factors <- c("rsmb", "is")
mod2m_factors <- c("rsmbm", "ism")
mod7_factors <- c("sb", "sib", "cb", "rit", "same","rb")

## Model 1: 1-factor solution

mod1 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8 +
               cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8 +
               rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11 +
               rb1 + rb2 + rb3 + rb4'
mod1_fit <- cfa(mod1, 
                data = RBS, 
                estimator = "WLSMV", 
                ordered = RBS_items
)
summary(mod1_fit, 
        standardized = TRUE, 
        fit.measures = TRUE
)

## Model 2: 2-factor solution

mod2 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f2 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8 +
               rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11 +
               rb1 + rb2 + rb3 + rb4'
mod2_fit <- cfa(mod2, 
                data = RBS, 
                estimator = "WLSMV", 
                ordered = RBS_items
)
summary(mod2_fit, 
        standardized = TRUE, 
        fit.measures = TRUE
)

## Model 3: 3-factor solution

mod3 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f2 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8
         f3 =~ rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11 +
               rb1 + rb2 + rb3 + rb4'
mod3_fit <- cfa(mod3, 
                data = RBS, 
                estimator = "WLSMV", 
                ordered = RBS_items
)
summary(mod3_fit, 
        standardized = TRUE, 
        fit.measures = TRUE
)

## Model 4: alternative 3-factor solution

mod4 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               rb1 + rb2 + rb3 + rb4
         f2 =~ sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f3 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8 +
               rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11'
mod4_fit <- cfa(mod4, 
                data = RBS, 
                estimator = "WLSMV", 
                ordered = RBS_items
)
summary(mod4_fit, 
        standardized = TRUE, 
        fit.measures = TRUE
)

## Model 5: 4-factor solution

mod5 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + 
               rb1 + rb2 + rb3 + rb4
         f2 =~ sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f3 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8
         f4 =~ rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11'
mod5_fit <- cfa(mod5, 
                data = RBS, 
                estimator = "WLSMV", 
                ordered = RBS_items
)
summary(mod5_fit, 
        standardized = TRUE, 
        fit.measures = TRUE
)

## Model 6: 5-factor solution

mod6 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6
         f2 =~ sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f3 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8
         f4 =~ rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11
         f5 =~ rb1 + rb2 + rb3 + rb4'
mod6_fit <- cfa(mod6,
                data = RBS, 
                estimator = "WLSMV", 
                ordered = RBS_items
)
summary(mod6_fit, 
        standardized = TRUE, 
        fit.measures = TRUE
)

## Model 7: 6-factor solution

mod7 <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6
         f2 =~ sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
         f3 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 + cb8
         f4 =~ rit1 + rit2 + rit3 + rit4 + rit5 + rit6
         f5 =~ same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11
         f6 =~ rb1 + rb2 + rb3 + rb4'
mod7_fit <- cfa(mod7, 
                data = RBS, 
                estimator = "WLSMV", 
                ordered = RBS_items
)
summary(mod7_fit, 
        standardized = TRUE, 
        fit.measures = TRUE
)

## Model modifications

# Calculate modification indices for model 2
mi <- modificationIndices(mod2_fit)

# Filter (mi > 10) and print top modifications
significant_mi <- mi %>% 
  filter(mi > 10) %>%
  arrange(desc(mi))

print(head(significant_mi))

## Modified model 2

mod2m <- 'f1 =~ sb1 +sb2 + sb3 + sb4 + sb5 + sb6 + cb8 +
                sib1 + sib2 + sib3 + sib4 + sib5 + sib6 + sib7 + sib8
          f2 =~ cb1 + cb2 + cb3 + cb4 + cb5 + cb6 + cb7 +
               rit1 + rit2 + rit3 + rit4 + rit5 + rit6 +
               same1 + same2 + same3 + same4 + same5 + same6 + same7 + same8 + same9 + same10 + same11 +
               rb1 + rb2 + rb3 + rb4'
mod2m_fit <- cfa(mod2m, 
                 data = RBS, 
                 estimator = "WLSMV", 
                 ordered = RBS_items
)
summary(mod2m_fit, 
        standardized = TRUE, 
        fit.measures = TRUE
)

## Relative fitness compared to model 1
lavTestLRT(mod1_fit, mod2_fit)
lavTestLRT(mod1_fit, mod3_fit)
lavTestLRT(mod1_fit, mod4_fit)
lavTestLRT(mod1_fit, mod5_fit)
lavTestLRT(mod1_fit, mod6_fit)
lavTestLRT(mod1_fit, mod7_fit)
lavTestLRT(mod1_fit, mod2m_fit)

# Reliability analysis

## Spearman's correlation between subscales

### Model 2: 2-factor solution

mod2_corr <- cor(RBS[,mod2_factors], method = "spearman")
print(mod2_corr)

### Model 7: 6-factor solution

mod7_corr <- cor(RBS[,mod7_factors], method = "spearman")
print(mod7_corr)

### Modified Model 2: alternative 2-factor solution

mod2m_corr <- cor(RBS[,mod2m_factors], method = "spearman")
print(mod2m_corr)

## Corrected item-total spearman's correlation

### Store items of each factors

# Model 2
RSMB <- RBS %>% select(all_of(RSMB_items))
IS <- RBS %>% select(all_of(IS_items))

# Model 7
SB <- RBS %>% select(all_of(sb_items))
SIB <- RBS %>% select(all_of(sib_items))
CB <- RBS %>% select(all_of(cb_items))
Rit <- RBS %>% select(all_of(rit_items))
Same <- RBS %>% select(all_of(same_items))
RB <- RBS %>% select(all_of(rb_items))

# Modified Model 2
RSMBm <- RBS %>% select(all_of(RSMB_items), "cb8")
ISm <- RBS %>% select(all_of(IS_items), -"cb8")

### Model 2: 2-factor solution

RSMB_rel <- alpha(cor(RSMB, method = "spearman"))
RSMB_rel$item.stats
IS_rel <- alpha(cor(IS, method = "spearman"))
IS_rel$item.stats

### Model 7: 6-factor solution

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

### Modified Model 2: alternative 2-factor solution

RSMBm_rel <- alpha(cor(RSMBm, method = "spearman"))
RSMBm_rel$item.stats
ISm_rel <- alpha(cor(ISm, method = "spearman"))
ISm_rel$item.stats  

## Composite reliability

### Model 2: 2-factor solution

rel_mod2 <- compRelSEM(mod2_fit)
print(rel_mod2, digits = 3)

### Model 7: 6-factor solution

rel_mod7 <- compRelSEM(mod7_fit)
print(rel_mod7, digits = 3)

### Modified Model 2: alternative 2-factor solution

rel_mod2m <- compRelSEM(mod2m_fit)
print(rel_mod2m, digits = 3)
