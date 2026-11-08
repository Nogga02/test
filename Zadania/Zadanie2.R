dane %>%
  filter(str_detect(Genre,"Comedy") & str_detect(Languages,"Polish")) %>%
  arrange(-IMDb.Score) %>%
  select(Title, IMDb.Score) %>%
  head(3)
