library(tidyverse)
library(patchwork)
library(here)
library(lubridate)

accidents <- readRDS(here("data","accidents.rds"))

spec <- accidents %>%
  select(casualties, time, day_of_week, severity, date)

spec2 <- spec %>%
  mutate(weekday = ifelse(wday(date) %in% c(1,7), "weekend", "weekday")

spec2 %>% 
  ggplot(aes(x = time, fill = severity)) +
  scale_fill_manual(values=c("#C93FE8", "#3FCCE8",  "#F5EE5C"))+
  geom_density(alpha = 0.3)+
  facet_wrap(~weekday, ncol=1)+  
  ggtitle("Number of accidents throughout the day")+
  xlab("Time of day")+
  ylab("Density")+
  labs(fill = "Severity")+
  theme_minimal()

