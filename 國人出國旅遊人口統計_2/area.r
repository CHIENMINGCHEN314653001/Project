require(ggplot2)
ayear=read.csv("year.csv",fileEncoding = "Big5")

ggplot(ayear, aes(x = year, y = count)) +
  geom_area(fill = "pink", color = "black", alpha = 1) +
  labs(title = "台灣人出國統計面積圖", x = "年分", y = "出國人數") +
  theme_minimal()



