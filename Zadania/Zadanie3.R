dane %>%
 mutate(rel_year = year(Release.Date)
        ,time_diff = Netflix.Release.Date - Release.Date) %>%
  filter(rel_year %in% c(2019, 2020)) %>%
  group_by(rel_year) %>%
  summarize(avg_time = mean(time_diff) %>%
              round(0))

