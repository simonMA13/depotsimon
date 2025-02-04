library(dplyr)
install.packages("dplyr")

data("starwars")
head(starwars)
library(ggplot2)
ggplot(data = starwars, mapping = aes(x= height, y= sex))+
  geom_bin2d()+
  theme_get()+
  scale(x, center = FALSE)
  coord_polar(theta = "y", direction=1)
