library(tidyverse)

cars |>
  ggplot(mapping = aes(x = speed, y = dist)) +
  geom_point(colour = "red") +
  geom_smooth(method = "lm",
              se = FALSE) +
  theme_minimal() +
  labs(
    title = "Relationship between Speed & Distance",
    subtitle = "The more you speed, longer distance where you stop",
    caption = "Ezekiel, M. (1930) Methods of Correlation Analysis. Wiley.", 
    x = "speed (mph)",
    y = "stopping distance (ft)"
  )