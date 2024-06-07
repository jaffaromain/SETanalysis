library(tidyverse)
library(dplyr)
library(readr)

alldata <- read_csv("SETS DATASET.csv")

Leadership_2014 <- read_csv("SETS_Comment_Extracts_1/Leadership Skills/Leadership_2014_export.csv") # MGHC02H3
Leadership_2015 <- read_csv("SETS_Comment_Extracts_1/Leadership Skills/Leadership_2015_export.csv") # MGHC02H3
Leadership_2017 <- read_csv("SETS_Comment_Extracts_1/Leadership Skills/Leadership_2017_export.csv") # MGHC02H3
Leadership_2018 <- read_csv("SETS_Comment_Extracts_1/Leadership Skills/Leadership_2018_export.csv")
Leadership_2019 <- read_csv("SETS_Comment_Extracts_1/Leadership Skills/Leadership_2019_export.csv")
Leadership_2020 <- read_csv("SETS_Comment_Extracts_1/Leadership Skills/Leadership_2020_export.csv")
Leadership_2021 <- read_csv("SETS_Comment_Extracts_1/Leadership Skills/Leadership_2021_export.csv")


Leadership_2014 <- Leadership_2014 %>% pivot_longer(-c(`...1`, `10`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `10`))
Leadership_2015 <- Leadership_2015 %>% pivot_longer(-`...1`, values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`))
Leadership_2017 <- Leadership_2017 %>% pivot_longer(-c(`...1`, `18`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `18`))
Leadership_2018 <- Leadership_2018 %>% pivot_longer(-c(`...1`, `20`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `20`))
Leadership_2019 <- Leadership_2019 %>% pivot_longer(-c(`...1`, `18`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `18`))
Leadership_2020 <- Leadership_2020 %>% pivot_longer(-`...1`, values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`))
Leadership_2021 <- Leadership_2021 %>% pivot_longer(-c(`...1`, `12`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `12`))


Leadership_2014$Course <- "Leadership Skills"
Leadership_2014$Term <- 2014

Leadership_2015$Course <- "Leadership Skills"
Leadership_2015$Term <- 2015

Leadership_2017$Course <- "Leadership Skills"
Leadership_2017$Term <- 2017

Leadership_2018$Course <-"Leadership Skills"
Leadership_2018$Term <- 2018

Leadership_2019$Course <- "Leadership Skills"
Leadership_2019$Term <- 2019

Leadership_2020$Course <- "Leadership Skills"
Leadership_2020$Term <- 2020

Leadership_2021$Course <- "Leadership Skills"
Leadership_2021$Term <- 2021



all_leadership <- rbind(Leadership_2014, Leadership_2015,Leadership_2017,
      Leadership_2018,Leadership_2019,Leadership_2020, Leadership_2021)

rm(Leadership_2014, Leadership_2015,Leadership_2017,
   Leadership_2018,Leadership_2019,Leadership_2020, Leadership_2021)
##########################################################################################################
Negotiation_Skills_2013 <- read_csv("SETS_Comment_Extracts/Negotiation Skills/Negotiation_Skills_2013_export.csv")
Negotiation_Skills_2014 <- read_csv("SETS_Comment_Extracts/Negotiation Skills/Negotiation_Skills_2014_export.csv")
Negotiation_Skills_2015 <- read_csv("SETS_Comment_Extracts/Negotiation Skills/Negotiation_Skills_2015_export.csv")
Negotiation_Skills_2017 <- read_csv("SETS_Comment_Extracts/Negotiation Skills/Negotiation_Skills_2017_export.csv")
Negotiation_Skills_2018 <- read_csv("SETS_Comment_Extracts/Negotiation Skills/Negotiation_Skills_2018_export.csv")
Negotiation_Skills_2019 <- read_csv("SETS_Comment_Extracts/Negotiation Skills/Negotiation_Skills_2019_export.csv")
Negotiation_Skills_2021 <- read_csv("SETS_Comment_Extracts/Negotiation Skills/Negotiation_Skills_2021_export.csv")

Negotiation_Skills_2013 <- Negotiation_Skills_2013 %>% pivot_longer(-c(`...1`, `42`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `42`))
Negotiation_Skills_2014 <- Negotiation_Skills_2014 %>% pivot_longer(-c(`...1`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`))
Negotiation_Skills_2015 <- Negotiation_Skills_2015 %>% pivot_longer(-c(`...1`, `32`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `32`))
Negotiation_Skills_2017 <- Negotiation_Skills_2017 %>% pivot_longer(-c(`...1`, `21`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `21`))
Negotiation_Skills_2018 <- Negotiation_Skills_2018 %>% pivot_longer(-c(`...1`, `11`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `11`))
Negotiation_Skills_2019 <- Negotiation_Skills_2019 %>% pivot_longer(-c(`...1`, `21`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `21`))
Negotiation_Skills_2021 <- Negotiation_Skills_2021 %>% pivot_longer(-c(`...1`, `7`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `7`))


Negotiation_Skills_2013$Course <- "Negotiation Skills"
Negotiation_Skills_2013$Term <- 2013

Negotiation_Skills_2014$Course <- "Negotiation Skills"
Negotiation_Skills_2014$Term <- 2014

Negotiation_Skills_2015$Course <- "Negotiation Skills"
Negotiation_Skills_2015$Term <- 2015

Negotiation_Skills_2017$Course <- "Negotiation Skills"
Negotiation_Skills_2017$Term <- 2017

Negotiation_Skills_2018$Course <- "Negotiation Skills"
Negotiation_Skills_2018$Term <- 2018

Negotiation_Skills_2019$Course <- "Negotiation Skills"
Negotiation_Skills_2019$Term <- 2019

Negotiation_Skills_2021$Course <- "Negotiation Skills"
Negotiation_Skills_2021$Term <- 2021


all_negotiation <- rbind(Negotiation_Skills_2013, Negotiation_Skills_2014, Negotiation_Skills_2015,Negotiation_Skills_2017,Negotiation_Skills_2018,Negotiation_Skills_2019,Negotiation_Skills_2021)
rm(Negotiation_Skills_2013, Negotiation_Skills_2014, Negotiation_Skills_2015,Negotiation_Skills_2017,Negotiation_Skills_2018,Negotiation_Skills_2019,Negotiation_Skills_2021)
##########################################################################################################

Compensation_2015 <- read_csv("SETS_Comment_Extracts/Compensation/Compensation_2015_export.csv")
Compensation_2016 <- read_csv("SETS_Comment_Extracts/Compensation/Compensation_2016_export.csv")
Compensation_2017 <- read_csv("SETS_Comment_Extracts/Compensation/Compensation_2017_export.csv")
Compensation_2018 <- read_csv("SETS_Comment_Extracts/Compensation/Compensation_2018_export.csv")
Compensation_2019 <- read_csv("SETS_Comment_Extracts/Compensation/Compensation_2019_export.csv")
Compensation_2020 <- read_csv("SETS_Comment_Extracts/Compensation/Compensation_2020_export.csv")
Compensation_2021 <- read_csv("SETS_Comment_Extracts/Compensation/Compensation_2021_export.csv")


Compensation_2015 <- Compensation_2015 %>% pivot_longer(-`...1`, values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`))
Compensation_2016 <- Compensation_2016 %>% pivot_longer(-c(`...1`,`19`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `19`))

Compensation_2017 <- Compensation_2017 %>% pivot_longer(-c(`...1`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`))
Compensation_2018 <- Compensation_2018 %>% pivot_longer(-c(`...1`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`))
Compensation_2019 <- Compensation_2019 %>% pivot_longer(-c(`...1`, `7`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `7`))
Compensation_2020 <- Compensation_2020 %>% pivot_longer(-c(`...1`, `49`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `49`))
Compensation_2021 <- Compensation_2021 %>% pivot_longer(-c(`...1`, `49`), values_to = "Question 7 & 8 Comments") %>% select(-c(`name`, `...1`, `49`))


Compensation_2015$Course <- "Compensation"
Compensation_2015$Term <- 2015

Compensation_2016$Course <- "Compensation"
Compensation_2016$Term <- 2016

Compensation_2017$Course <- "Compensation"
Compensation_2017$Term <- 2017

Compensation_2018$Course <- "Compensation"
Compensation_2018$Term <- 2018

Compensation_2019$Course <- "Compensation"
Compensation_2019$Term <- 2019

Compensation_2020$Course <- "Compensation"
Compensation_2020$Term <- 2020

Compensation_2021$Course <- "Compensation"
Compensation_2021$Term <- 2021


all_compensation <- rbind(Compensation_2015,Compensation_2016, 
                          Compensation_2017,Compensation_2018,
                          Compensation_2019, Compensation_2020, Compensation_2021)

rm(Compensation_2013, Compensation_2014, Compensation_2015,Compensation_2016, 
   Compensation_2017,Compensation_2018,
   Compensation_2019, Compensation_2020, Compensation_2021)

comp_negotiation_leadership <- rbind(all_leadership, all_compensation, all_negotiation)

comp_negotiation_leadership <- comp_negotiation_leadership %>% 
  filter(!is.na(`Question 7 & 8 Comments`)) %>% 
  filter(`Question 7 & 8 Comments` != "Comments" &
           `Question 7 & 8 Comments` != "Please comment on any assistance that was available to support your learning inthis course"  &
  `Question 7 & 8 Comments` != "Please comment on any assistance that was available to support your learning in thiscourse" &
 `Question 7 & 8 Comments` != "Please comment on any assistance that was available to support your learning in this course"
       )
# for coding in R
saveRDS(comp_negotiation_leadership, file = "comp_nego_lship.RDS") 

# .csv for LIWC or other programs
write.csv(comp_negotiation_leadership,"comp_negotiation_leadership.csv", row.names = FALSE)

# 
